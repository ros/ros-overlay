# Copyright 2018 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{2_7,3_5} )

inherit ros-cmake

DESCRIPTION="Library of ros controllers"
HOMEPAGE="http://ros.org/wiki/ros_controllers"
SRC_URI="https://github.com/ros-gbp/${PN}-release/archive/release/kinetic/${PN}/0.13.4-0.tar.gz -> ${PN}-kinetic-release-${PV}.tar.gz"

LICENSE="BSD"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
RDEPEND="
	ros-kinetic/diff_drive_controller
	ros-kinetic/effort_controllers
	ros-kinetic/force_torque_sensor_controller
	ros-kinetic/forward_command_controller
	ros-kinetic/gripper_action_controller
	ros-kinetic/imu_sensor_controller
	ros-kinetic/joint_state_controller
	ros-kinetic/joint_trajectory_controller
	ros-kinetic/position_controllers
	ros-kinetic/rqt_joint_trajectory_controller
	ros-kinetic/velocity_controllers
"
DEPEND="${RDEPEND}
	ros-kinetic/catkin
"

SLOT="0"
ROS_DISTRO="kinetic"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
