# Copyright 2017 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6

DESCRIPTION="PCL (Point Cloud Library) ROS interface stack. PCL-ROS is the preferred
  bridge"
HOMEPAGE="https://wiki.ros.org"
SRC_URI="https://github.com/ros-gbp/perception_pcl-release/archive/release/lunar/pcl_ros/1.5.3-0.tar.gz -> ${P}-${PV}.tar.gz"

LICENSE="BSD"

KEYWORDS="x86 amd64 arm ~arm64"

RDEPEND="
    ros-lunar/dynamic_reconfigure
    ros-lunar/message_filters
    ros-lunar/nodelet
    ros-lunar/nodelet_topic_tools
    ros-lunar/pcl_conversions
    ros-lunar/pcl_msgs
    ros-lunar/pluginlib
    ros-lunar/rosbag
    ros-lunar/roscpp
    ros-lunar/sensor_msgs
    ros-lunar/std_msgs
    ros-lunar/tf
    ros-lunar/tf2_eigen
    dev-cpp/eigen
    sci-libs/pcl
    sci-libs/vtk
    sci-libs/proj
    dev-qt/qtcore
"
DEPEND="${RDEPEND}
    dev-python/catkin
    ros-lunar/catkin
    ros-lunar/cmake_modules
    ros-lunar/genmsg
    ros-lunar/rosconsole
    ros-lunar/roslib
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
