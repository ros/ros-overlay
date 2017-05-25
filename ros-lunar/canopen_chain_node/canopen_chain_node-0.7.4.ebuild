# Copyright 2017 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6

DESCRIPTION="ROS node base implementation for CANopen chains with support for management services and diagnostics"
HOMEPAGE="https://wiki.ros.org"
SRC_URI="https://github.com/ros-industrial-release/ros_canopen-release/archive/release/lunar/canopen_chain_node/0.7.4-0.tar.gz"

LICENSE="LGPLv3"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"

RDEPEND="
    ros-lunar/socketcan_interface
    ros-lunar/roslib
    ros-lunar/std_srvs
    ros-lunar/roscpp
    ros-lunar/pluginlib
    ros-lunar/canopen_master
    ros-lunar/message_runtime
    ros-lunar/std_msgs
    ros-lunar/diagnostic_updater
"
DEPEND="
    ros-lunar/socketcan_interface
    ros-lunar/std_srvs
    ros-lunar/roscpp
    ros-lunar/pluginlib
    ros-lunar/canopen_master
    ros-lunar/roslib
    ros-lunar/std_msgs
    ros-lunar/diagnostic_updater
    ros-lunar/message_generation
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
    source /opt/ros/lunar/setup.bash
    catkin_make_isolated --install --install-space="/opt/ros/lunar" || die
}
