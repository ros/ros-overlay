# Copyright 2017 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6

DESCRIPTION="MAVROS -- MAVLink extendable communication node for ROS
    with proxy for Groun"
HOMEPAGE="https://wiki.ros.org"
SRC_URI="https://github.com/mavlink/mavros-release/archive/release/indigo/mavros/0.17.5-0.tar.gz"

LICENSE="|| ( GPLv3 LGPLv3 BSD )"
KEYWORDS="~x86 ~amd64 ~arm ~arm64"

RDEPEND="
    ros-indigo/pluginlib
    ros-indigo/mavros_msgs
    ros-indigo/rospy
    ros-indigo/libmavconn
    ros-indigo/geometry_msgs
    ros-indigo/nav_msgs
    ros-indigo/rosconsole_bridge
    ros-indigo/tf2_ros
    ros-indigo/std_srvs
    ros-indigo/message_runtime
    ros-indigo/roscpp
    ros-indigo/eigen_conversions
    ros-indigo/diagnostic_msgs
    ros-indigo/std_msgs
    ros-indigo/sensor_msgs
    ros-indigo/diagnostic_updater
    ros-indigo/mavlink
    dev-cpp/eigen
    dev-libs/boost
"
DEPEND="${RDEPEND}
    ros-indigo/cmake_modules
    ros-indigo/angles
"

SLOT="0/0"
CMAKE_BUILD_TYPE=RelWithDebInfo
ROS_PREFIX="opt/ros/indigo"

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
