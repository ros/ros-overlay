# Copyright 2017 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6

DESCRIPTION="MAVROS -- MAVLink extendable communication node for ROS
    with proxy for Ground Control Station."
HOMEPAGE="https://wiki.ros.org"
SRC_URI="https://github.com/mavlink/mavros-release/archive/release/kinetic/mavros/0.19.0-0.tar.gz"

LICENSE="UNKNOWN"
KEYWORDS="~x86 ~amd64 ~arm ~arm64"

RDEPEND="
    ros-kinetic/rospy
    ros-kinetic/mavros_msgs
    ros-kinetic/std_srvs
    ros-kinetic/libmavconn
    ros-kinetic/diagnostic_updater
    ros-kinetic/diagnostic_msgs
    ros-kinetic/nav_msgs
    ros-kinetic/roscpp
    ros-kinetic/sensor_msgs
    ros-kinetic/message_runtime
    ros-kinetic/std_msgs
    ros-kinetic/rosconsole_bridge
    ros-kinetic/tf2_ros
    ros-kinetic/geometry_msgs
    ros-kinetic/mavlink
    ros-kinetic/eigen_conversions
    ros-kinetic/pluginlib
    dev-cpp/eigen
    dev-libs/boost
"
DEPEND="
    ros-kinetic/mavros_msgs
    ros-kinetic/std_srvs
    ros-kinetic/cmake_modules
    ros-kinetic/libmavconn
    ros-kinetic/angles
    ros-kinetic/diagnostic_updater
    ros-kinetic/diagnostic_msgs
    ros-kinetic/nav_msgs
    ros-kinetic/roscpp
    ros-kinetic/sensor_msgs
    ros-kinetic/std_msgs
    ros-kinetic/rosconsole_bridge
    ros-kinetic/tf2_ros
    ros-kinetic/geometry_msgs
    ros-kinetic/mavlink
    ros-kinetic/eigen_conversions
    ros-kinetic/pluginlib
    dev-cpp/eigen
    dev-libs/boost
"

SLOT="0/0"
CMAKE_BUILD_TYPE=RelWithDebInfo

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
    echo ""
}

pkg_postinst() {
    cd ../work
    source /opt/ros/kinetic/setup.bash
    catkin_make_isolated --install --install-space="/opt/ros/kinetic" || die
}
