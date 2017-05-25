# Copyright 2017 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6

DESCRIPTION=""
HOMEPAGE="https://wiki.ros.org"
SRC_URI="https://github.com/ros-gbp/ros_controllers-release/archive/release/kinetic/ros_controllers/0.12.3-0.tar.gz"

LICENSE="UNKNOWN"KEYWORDS="~x86 ~amd64 ~arm ~arm64 "

RDEPEND="
    ros-kinetic/position_controllers
    ros-kinetic/gripper_action_controller
    ros-kinetic/diff_drive_controller
    ros-kinetic/forward_command_controller
    ros-kinetic/imu_sensor_controller
    ros-kinetic/force_torque_sensor_controller
    ros-kinetic/velocity_controllers
    ros-kinetic/joint_state_controller
    ros-kinetic/joint_trajectory_controller
    ros-kinetic/rqt_joint_trajectory_controller
    ros-kinetic/effort_controllers

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
