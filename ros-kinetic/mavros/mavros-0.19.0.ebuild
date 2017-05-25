# Copyright 2017 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6

DESCRIPTION=""
HOMEPAGE="https://wiki.ros.org"
SRC_URI="https://github.com/mavlink/mavros-release/archive/release/kinetic/mavros/0.19.0-0.tar.gz"

LICENSE="UNKNOWN"KEYWORDS="~x86 ~amd64 ~arm ~arm64 "

RDEPEND="
    ros-kinetic/nav_msgs
    ros-kinetic/std_srvs
    ros-kinetic/roscpp
    ros-kinetic/pluginlib
    ros-kinetic/rosconsole_bridge
    ros-kinetic/std_msgs
    ros-kinetic/message_runtime
    ros-kinetic/sensor_msgs
    ros-kinetic/mavlink
    ros-kinetic/mavros_msgs
    ros-kinetic/eigen_conversions
    ros-kinetic/diagnostic_updater
    ros-kinetic/libmavconn
    ros-kinetic/rospy
    ros-kinetic/tf2_ros
    ros-kinetic/geometry_msgs
    ros-kinetic/boost
    ros-kinetic/diagnostic_msgs
    ros-kinetic/eigen

"
DEPEND="${RDEPEND}
    ros-kinetic/nav_msgs
    ros-kinetic/tf2_ros
    ros-kinetic/std_srvs
    ros-kinetic/eigen
    ros-kinetic/pluginlib
    ros-kinetic/rosconsole_bridge
    ros-kinetic/std_msgs
    ros-kinetic/sensor_msgs
    ros-kinetic/libmavconn
    ros-kinetic/eigen_conversions
    ros-kinetic/diagnostic_updater
    ros-kinetic/cmake_modules
    ros-kinetic/mavlink
    ros-kinetic/geometry_msgs
    ros-kinetic/mavros_msgs
    ros-kinetic/angles
    ros-kinetic/boost
    ros-kinetic/diagnostic_msgs
    ros-kinetic/roscpp

"

SLOT="0/0"
CMAKE_BUILD_TYPE=RelWithDebInfo

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
    echo ""
}

pkg_postinst() {
    cd ../work
    source /opt/ros/kinetic/setup.bash
    catkin_make_isolated --install --install-space="/opt/ros/kinetic" || die
}
