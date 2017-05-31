# Copyright 2017 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6

DESCRIPTION="MAVROS -- MAVLink extendable communication node for ROS
    with proxy for Groun"
HOMEPAGE="https://wiki.ros.org"
SRC_URI="https://github.com/mavlink/mavros-release/archive/release/lunar/mavros/0.19.0-0.tar.gz"

LICENSE="|| ( GPLv3 LGPLv3 BSD )"
KEYWORDS="~x86 ~amd64 ~arm ~arm64"

RDEPEND="
    ros-lunar/rosconsole_bridge
    ros-lunar/mavros_msgs
    ros-lunar/eigen_conversions
    ros-lunar/pluginlib
    ros-lunar/diagnostic_msgs
    ros-lunar/diagnostic_updater
    ros-lunar/message_runtime
    ros-lunar/tf2_ros
    ros-lunar/sensor_msgs
    ros-lunar/std_msgs
    ros-lunar/geometry_msgs
    ros-lunar/rospy
    ros-lunar/std_srvs
    ros-lunar/roscpp
    ros-lunar/nav_msgs
    ros-lunar/mavlink
    ros-lunar/libmavconn
    dev-cpp/eigen
    dev-libs/boost
"
DEPEND="${RDEPEND}
    ros-lunar/cmake_modules
    ros-lunar/angles
"

SLOT="0/0"
CMAKE_BUILD_TYPE=RelWithDebInfo
ROS_PREFIX="opt/ros/lunar"

src_unpack() {
    wget -O ${P}.tar.gz ${SRC_URI}
    tar -xf ${P}.tar.gz
    rm -f ${P}.tar.gz
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
    catkin_make_isolated --install --install-space="${D}/${ROS_PREFIX}" || die
    if [[ -e /${ROS_PREFIX}/setup.bash ]]; then
        rm -f ${D}/${ROS_PREFIX}/{.catkin,_setup_util.py,env.sh,setup.bash,setup.sh}
        rm -f ${D}/${ROS_PREFIX}/{setup.zsh,.rosinstall}
    fi
}
