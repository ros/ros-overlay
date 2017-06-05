# Copyright 2017 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6

DESCRIPTION="3D visualization tool for ROS."
HOMEPAGE="https://wiki.ros.org"
SRC_URI="https://github.com/ros-gbp/rviz-release/archive/release/lunar/rviz/1.12.8-0.tar.gz -> ${P}-${PV}.tar.gz"

LICENSE="|| ( BSD CC-BY-SA-3.0 )"
KEYWORDS="x86 amd64 arm ~arm64"

RDEPEND="
    ros-lunar/geometry_msgs
    ros-lunar/image_transport
    ros-lunar/interactive_markers
    ros-lunar/laser_geometry
    ros-lunar/map_msgs
    ros-lunar/media_export
    ros-lunar/message_filters
    ros-lunar/nav_msgs
    ros-lunar/pluginlib
    ros-lunar/python_qt_binding
    ros-lunar/resource_retriever
    ros-lunar/rosbag
    ros-lunar/rosconsole
    ros-lunar/roscpp
    ros-lunar/roslib
    ros-lunar/rospy
    ros-lunar/sensor_msgs
    ros-lunar/std_msgs
    ros-lunar/std_srvs
    ros-lunar/tf
    ros-lunar/urdf
    ros-lunar/visualization_msgs
    media-libs/assimp
    dev-cpp/eigen
    dev-games/ogre
    dev-qt/qtcore
    dev-qt/qtgui
    dev-qt/qtopengl
    dev-qt/qtwidgets
    dev-libs/urdfdom_headers
    media-libs/mesa
    dev-libs/tinyxml
    dev-cpp/yaml-cpp
"
DEPEND="${RDEPEND}
    dev-python/catkin
    ros-lunar/catkin
    ros-lunar/cmake_modules
    media-libs/assimp
    dev-qt/qtopengl
    dev-qt/qtcore
"

SLOT="0"
CMAKE_BUILD_TYPE=RelWithDebInfo
ROS_PREFIX="opt/ros/lunar"
CMAKE_ROS_FLAGS="-DCMAKE_BUILD_TYPE=${CMAKE_BUILD_TYPE}"
CMAKE_ROS_FLAGS="-DCMAKE_INSTALL_PREFIX=/${ROS_PREFIX} ${CMAKE_ROS_FLAGS}"
CMAKE_ROS_FLAGS="-DCATKIN_DEVEL_PREFIX=../devel ${CMAKE_ROS_FLAGS}"
CMAKE_ROS_FLAGS="-DCMAKE_PREFIX_PATH=/${ROS_PREFIX}:${CMAKE_PREFIX_PATH}"

src_unpack() {
    default
    mv *${P}* ${P}
}

src_configure() {
    mkdir ${WORKDIR}/src
    cp -R ${WORKDIR}/${P} ${WORKDIR}/src/${P}
}

src_compile() {
    mkdir ${WORKDIR}/${P}/build
    mkdir ${WORKDIR}/${P}/devel
    cd ${WORKDIR}/${P}/build
    cmake $(echo ${CMAKE_ROS_FLAGS}) ..
    make -j$(nproc) -l$(nproc) || die
}

src_install() {
    cd ../../work
    source /${ROS_PREFIX}/setup.bash
    export PYTHONPATH="/${ROS_PREFIX}/lib/python3.5/site-packages:${PYTHONPATH}"
    export PYTHONPATH="/${ROS_PREFIX}/lib64/python3.5/site-packages:${PYTHONPATH}"
    export PYTHONPATH="${D}/${ROS_PREFIX}/lib/python3.5/site-packages:${PYTHONPATH}"
    export PYTHONPATH="${D}/${ROS_PREFIX}/lib64/python3.5/site-packages:${PYTHONPATH}"
    if [[ ! -d ${D}/${ROS_PREFIX}/lib64/python3.5/site-packages ]]; then
        mkdir -p ${D}/${ROS_PREFIX}/lib64/python3.5/site-packages
    fi

    cd ${P}/build
    make install || die
    if [[ -e /${ROS_PREFIX}/setup.bash ]]; then
        rm -f ${D}/${ROS_PREFIX}/{.catkin,_setup_util.py,env.sh,setup.bash,setup.sh}
        rm -f ${D}/${ROS_PREFIX}/{setup.zsh,.rosinstall}
    fi
}
