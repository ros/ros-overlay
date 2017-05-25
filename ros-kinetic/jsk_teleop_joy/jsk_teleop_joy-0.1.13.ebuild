# Copyright 2017 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6

DESCRIPTION=""
HOMEPAGE="http://ros.org/wiki/jsk_teleop_joy"
SRC_URI="https://github.com/tork-a/jsk_control-release/archive/release/kinetic/jsk_teleop_joy/0.1.13-0.tar.gz"

LICENSE="UNKNOWN"KEYWORDS="~x86 ~amd64 ~arm ~arm64 "

RDEPEND="
    ros-kinetic/python-pygame
    ros-kinetic/view_controller_msgs
    ros-kinetic/jsk_interactive_marker
    ros-kinetic/interactive_markers
    ros-kinetic/jsk_rviz_plugins
    ros-kinetic/diagnostic_updater
    ros-kinetic/jsk_footstep_msgs
    ros-kinetic/ps3joy
    ros-kinetic/visualization_msgs
    ros-kinetic/tf
    ros-kinetic/joy_mouse
    ros-kinetic/diagnostic_msgs
    ros-kinetic/image_view2

"
DEPEND="${RDEPEND}
    ros-kinetic/view_controller_msgs
    ros-kinetic/jsk_interactive_marker
    ros-kinetic/interactive_markers
    ros-kinetic/jsk_rviz_plugins
    ros-kinetic/diagnostic_updater
    ros-kinetic/jsk_footstep_msgs
    ros-kinetic/ps3joy
    ros-kinetic/visualization_msgs
    ros-kinetic/tf
    ros-kinetic/joy_mouse
    ros-kinetic/diagnostic_msgs

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
