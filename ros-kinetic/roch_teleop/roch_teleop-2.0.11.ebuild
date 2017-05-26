# Copyright 2017 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6

DESCRIPTION="SawYer roch controller configurations"
HOMEPAGE="https://wiki.ros.org"
SRC_URI="https://github.com/SawYerRobotics-release/roch-release/archive/release/kinetic/roch_teleop/2.0.11-0.tar.gz"

LICENSE="BSD"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"

RDEPEND="
    ros-kinetic/teleop_twist_joy
    ros-kinetic/twist_mux
    ros-kinetic/controller_manager
    ros-kinetic/roscpp
    ros-kinetic/interactive_marker_twist_server
    ros-kinetic/joy
    ros-kinetic/diff_drive_controller
    ros-kinetic/geometry_msgs
    ros-kinetic/robot_localization
    ros-kinetic/joint_trajectory_controller
    ros-kinetic/rostopic
    ros-kinetic/joint_state_controller
    ros-kinetic/yocs_cmd_vel_mux
"
DEPEND="
    ros-kinetic/roscpp
    ros-kinetic/joy
    ros-kinetic/roslaunch
    ros-kinetic/geometry_msgs
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
