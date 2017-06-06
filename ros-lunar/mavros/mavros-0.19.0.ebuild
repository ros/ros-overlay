# Copyright 2017 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6

DESCRIPTION="MAVROS -- MAVLink extendable communication node for ROS
    with proxy for Groun"
HOMEPAGE="https://wiki.ros.org"
SRC_URI="https://github.com/mavlink/mavros-release/archive/release/lunar/mavros/0.19.0-0.tar.gz -> ${P}-${PV}.tar.gz"

LICENSE="|| ( GPL-3 LGPL-3 BSD )"
KEYWORDS="x86 amd64 arm ~arm64"

RDEPEND="
    ros-lunar/diagnostic_msgs
    ros-lunar/diagnostic_updater
    ros-lunar/eigen_conversions
    ros-lunar/geometry_msgs
    ros-lunar/libmavconn
    ros-lunar/mavlink
    ros-lunar/mavros_msgs
    ros-lunar/message_runtime
    ros-lunar/nav_msgs
    ros-lunar/pluginlib
    ros-lunar/rosconsole_bridge
    ros-lunar/roscpp
    ros-lunar/rospy
    ros-lunar/sensor_msgs
    ros-lunar/std_msgs
    ros-lunar/std_srvs
    ros-lunar/tf2_ros
    dev-libs/boost
    dev-cpp/eigen
"
DEPEND="${RDEPEND}
    dev-python/catkin
    ros-lunar/angles
    ros-lunar/catkin
    ros-lunar/cmake_modules
"

SLOT="0/0"
CMAKE_BUILD_TYPE=RelWithDebInfo
ROS_PREFIX="opt/ros/lunar"

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
