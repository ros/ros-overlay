# Copyright 2017 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6

DESCRIPTION="A generic canopen implementation for ROS"
HOMEPAGE="https://wiki.ros.org"
SRC_URI="https://github.com/ros-industrial-release/ros_canopen-release/archive/release/kinetic/ros_canopen/0.7.4-0.tar.gz"

LICENSE="LGPL"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"

RDEPEND="
    ros-kinetic/canopen_402
    ros-kinetic/socketcan_interface
    ros-kinetic/socketcan_bridge
    ros-kinetic/canopen_master
    ros-kinetic/canopen_chain_node
    ros-kinetic/can_msgs
    ros-kinetic/canopen_motor_node
"
DEPEND="
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
