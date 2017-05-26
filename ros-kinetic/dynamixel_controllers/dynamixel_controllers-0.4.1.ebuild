# Copyright 2017 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6

DESCRIPTION="This package contains a configurable node, services and a spawner script
        to start, stop and restart one or more controller plugins. Reusable
        controller types are defined for common Dynamixel motor joints. Both speed and
        torque can be set for each joint. This python package can be used by more
        specific robot controllers and all configurable parameters can be loaded
        via a yaml file."
HOMEPAGE="https://wiki.ros.org"
SRC_URI="https://github.com/arebgun/dynamixel_motor-release/archive/release/kinetic/dynamixel_controllers/0.4.1-0.tar.gz"

LICENSE="BSD"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"

RDEPEND="
    ros-kinetic/rospy
    ros-kinetic/diagnostic_msgs
    ros-kinetic/std_msgs
    ros-kinetic/control_msgs
    ros-kinetic/dynamixel_driver
    ros-kinetic/trajectory_msgs
    ros-kinetic/dynamixel_msgs
    ros-kinetic/actionlib
"
DEPEND="
    ros-kinetic/message_generation
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
