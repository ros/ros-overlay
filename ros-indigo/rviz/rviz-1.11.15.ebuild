# Copyright 2017 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6

DESCRIPTION="3D visualization tool for ROS."
HOMEPAGE="https://wiki.ros.org"
SRC_URI="https://github.com/ros-gbp/rviz-release/archive/release/indigo/rviz/1.11.15-0.tar.gz -> ${P}-${PV}.tar.gz"

LICENSE="|| ( BSD CC-BY-SA-3.0 )"
KEYWORDS="x86 amd64 arm ~arm64"

RDEPEND="
    ros-indigo/geometry_msgs
    ros-indigo/image_geometry
    ros-indigo/image_transport
    ros-indigo/interactive_markers
    ros-indigo/laser_geometry
    ros-indigo/map_msgs
    ros-indigo/media_export
    ros-indigo/message_filters
    ros-indigo/nav_msgs
    ros-indigo/pluginlib
    ros-indigo/python_qt_binding
    ros-indigo/resource_retriever
    ros-indigo/rosbag
    ros-indigo/rosconsole
    ros-indigo/roscpp
    ros-indigo/roslib
    ros-indigo/rospy
    ros-indigo/sensor_msgs
    ros-indigo/std_msgs
    ros-indigo/std_srvs
    ros-indigo/tf
    ros-indigo/urdf
    ros-indigo/visualization_msgs
    media-libs/assimp
    dev-cpp/eigen
    dev-games/ogre
    dev-qt/qtcore
    dev-qt/qtopengl
    media-libs/mesa
    dev-libs/tinyxml
    dev-cpp/yaml-cpp
"
DEPEND="${RDEPEND}
    dev-python/catkin
    ros-indigo/catkin
    ros-indigo/cmake_modules
    media-libs/assimp
"

SLOT="0/0"
CMAKE_BUILD_TYPE=RelWithDebInfo
ROS_PREFIX="opt/ros/indigo"

src_unpack() {
    default
    mv *${P}* ${P}
}

src_configure() {
    mkdir ${WORKDIR}/src
    cp -R ${WORKDIR}/${P} ${WORKDIR}/src/${P}
}

src_compile() {
    echo ""
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

    catkin_make_isolated --install --install-space="${D}/${ROS_PREFIX}" || die
    if [[ -e /${ROS_PREFIX}/setup.bash ]]; then
        rm -f ${D}/${ROS_PREFIX}/{.catkin,_setup_util.py,env.sh,setup.bash,setup.sh}
        rm -f ${D}/${ROS_PREFIX}/{setup.zsh,.rosinstall}
    fi
}
