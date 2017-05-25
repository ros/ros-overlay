# Copyright 2017 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6

DESCRIPTION=""
HOMEPAGE="https://wiki.ros.org"
SRC_URI="https://github.com/ros-gbp/ros_control-release/archive/release/kinetic/ros_control/0.11.4-0.tar.gz"

LICENSE="UNKNOWN"KEYWORDS="~x86 ~amd64 ~arm ~arm64 "

RDEPEND="
    ros-kinetic/combined_robot_hw_tests
    ros-kinetic/hardware_interface
    ros-kinetic/controller_interface
    ros-kinetic/controller_manager
    ros-kinetic/transmission_interface
    ros-kinetic/joint_limits_interface
    ros-kinetic/realtime_tools
    ros-kinetic/combined_robot_hw
    ros-kinetic/controller_manager_tests
    ros-kinetic/controller_manager_msgs

"
DEPEND="${RDEPEND}

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
