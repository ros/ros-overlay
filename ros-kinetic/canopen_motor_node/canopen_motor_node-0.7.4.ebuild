# Copyright 2017 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6

DESCRIPTION=""
HOMEPAGE="https://wiki.ros.org"
SRC_URI="https://github.com/ros-industrial-release/ros_canopen-release/archive/release/kinetic/canopen_motor_node/0.7.4-0.tar.gz"

LICENSE="UNKNOWN"KEYWORDS="~x86 ~amd64 ~arm ~arm64 "

RDEPEND="
    ros-kinetic/canopen_chain_node
    ros-kinetic/hardware_interface
    ros-kinetic/muparser
    ros-kinetic/controller_manager
    ros-kinetic/canopen_402
    ros-kinetic/urdf
    ros-kinetic/joint_limits_interface
    ros-kinetic/filters
    ros-kinetic/controller_manager_msgs

"
DEPEND="${RDEPEND}
    ros-kinetic/canopen_chain_node
    ros-kinetic/hardware_interface
    ros-kinetic/muparser
    ros-kinetic/controller_manager
    ros-kinetic/canopen_402
    ros-kinetic/urdf
    ros-kinetic/joint_limits_interface
    ros-kinetic/filters
    ros-kinetic/controller_manager_msgs

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
