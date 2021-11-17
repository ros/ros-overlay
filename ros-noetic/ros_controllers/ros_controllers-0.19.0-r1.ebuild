# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=7
PYTHON_COMPAT=( python{3_8,3_9,3_10} )

inherit ros-cmake

DESCRIPTION="Library of ros controllers"
HOMEPAGE="http://ros.org/wiki/ros_controllers"
SRC_URI="https://github.com/ros-gbp/${PN}-release/archive/release/noetic/${PN}/0.19.0-1.tar.gz -> ${PN}-noetic-release-${PV}.tar.gz"

LICENSE="BSD"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
RDEPEND="
	ros-noetic/ackermann_steering_controller
	ros-noetic/diff_drive_controller
	ros-noetic/effort_controllers
	ros-noetic/force_torque_sensor_controller
	ros-noetic/forward_command_controller
	ros-noetic/gripper_action_controller
	ros-noetic/imu_sensor_controller
	ros-noetic/joint_state_controller
	ros-noetic/joint_trajectory_controller
	ros-noetic/position_controllers
	ros-noetic/velocity_controllers
"
DEPEND="${RDEPEND}
	ros-noetic/catkin
"

SLOT="0"
ROS_DISTRO="noetic"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
