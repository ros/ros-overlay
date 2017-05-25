# Copyright 2017 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6

DESCRIPTION=""
HOMEPAGE="https://wiki.ros.org"
SRC_URI="https://github.com/easymov/ackermann_controller-release/archive/release/kinetic/ackermann_controller/0.1.2-0.tar.gz"

LICENSE="UNKNOWN"KEYWORDS="~x86 ~amd64 ~arm ~arm64 "

RDEPEND="
    ros-kinetic/nav_msgs
    ros-kinetic/hardware_interface
    ros-kinetic/control_toolbox
    ros-kinetic/roscpp
    ros-kinetic/forward_command_controller
    ros-kinetic/urdf
    ros-kinetic/realtime_tools
    ros-kinetic/control_msgs
    ros-kinetic/angles
    ros-kinetic/tf
    ros-kinetic/controller_interface

"
DEPEND="${RDEPEND}
    ros-kinetic/nav_msgs
    ros-kinetic/hardware_interface
    ros-kinetic/control_toolbox
    ros-kinetic/roscpp
    ros-kinetic/forward_command_controller
    ros-kinetic/urdf
    ros-kinetic/realtime_tools
    ros-kinetic/control_msgs
    ros-kinetic/angles
    ros-kinetic/tf
    ros-kinetic/controller_interface

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
