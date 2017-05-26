# Copyright 2017 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6

DESCRIPTION="This package extends the canopen_chain_node with specialized handling for canopen_402 devices. It facilitates interface abstraction with ros_control."
HOMEPAGE="https://wiki.ros.org"
SRC_URI="https://github.com/ros-industrial-release/ros_canopen-release/archive/release/kinetic/canopen_motor_node/0.7.4-0.tar.gz"

LICENSE="LGPLv3"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"

RDEPEND="
    ros-kinetic/hardware_interface
    ros-kinetic/canopen_402
    ros-kinetic/joint_limits_interface
    ros-kinetic/controller_manager_msgs
    ros-kinetic/controller_manager
    ros-kinetic/canopen_chain_node
    ros-kinetic/filters
    ros-kinetic/urdf
    dev-cpp/muParser
"
DEPEND="
    ros-kinetic/hardware_interface
    ros-kinetic/canopen_402
    ros-kinetic/joint_limits_interface
    ros-kinetic/controller_manager_msgs
    ros-kinetic/controller_manager
    ros-kinetic/canopen_chain_node
    ros-kinetic/filters
    ros-kinetic/urdf
    dev-cpp/muParser
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
