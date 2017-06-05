# Copyright 2017 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6

DESCRIPTION="This package contains the ROS bindings for the tf2 library, for both Python and "
HOMEPAGE="http://www.ros.org/wiki/tf2_ros"
SRC_URI="https://github.com/ros-gbp/geometry2-release/archive/release/lunar/tf2_ros/0.5.15-0.tar.gz -> ${P}-${PV}.tar.gz"

LICENSE="BSD"

KEYWORDS="x86 amd64 arm ~arm64"

RDEPEND="
    ros-lunar/actionlib
    ros-lunar/actionlib_msgs
    ros-lunar/geometry_msgs
    ros-lunar/message_filters
    ros-lunar/roscpp
    ros-lunar/rosgraph
    ros-lunar/rospy
    ros-lunar/std_msgs
    ros-lunar/tf2
    ros-lunar/tf2_msgs
    ros-lunar/tf2_py
    ros-lunar/xmlrpcpp
"
DEPEND="${RDEPEND}
    dev-python/catkin
    ros-lunar/catkin
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
