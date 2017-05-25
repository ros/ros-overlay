# Copyright 2017 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6

DESCRIPTION=""
HOMEPAGE="https://wiki.ros.org"
SRC_URI="https://github.com/SawYerRobotics-release/roch_robot-release/archive/release/kinetic/roch_control/2.0.13-2.tar.gz"

LICENSE="UNKNOWN"KEYWORDS="~x86 ~amd64 ~arm ~arm64 "

RDEPEND="
    ros-kinetic/joint_trajectory_controller
    ros-kinetic/roscpp
    ros-kinetic/diff_drive_controller
    ros-kinetic/controller_manager
    ros-kinetic/joy
    ros-kinetic/interactive_marker_twist_server
    ros-kinetic/twist_mux
    ros-kinetic/teleop_twist_joy
    ros-kinetic/robot_localization
    ros-kinetic/geometry_msgs
    ros-kinetic/rostopic
    ros-kinetic/joint_state_controller
    ros-kinetic/create_node

"
DEPEND="${RDEPEND}
    ros-kinetic/roslaunch
    ros-kinetic/joy
    ros-kinetic/geometry_msgs
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
