# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=7
PYTHON_COMPAT=( python{3_8,3_9,3_10} )

inherit ros-cmake

DESCRIPTION="The pr2_gripper_sensor_action package provides an action interface for talk[...]"
HOMEPAGE="None"
SRC_URI="https://github.com/pr2-gbp/pr2_gripper_sensor-release/archive/release/noetic/${PN}/1.0.12-1.tar.gz -> ${PN}-noetic-release-${PV}.tar.gz"

LICENSE="BSD"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
RDEPEND="
	ros-noetic/actionlib
	ros-noetic/actionlib_msgs
	ros-noetic/message_runtime
	ros-noetic/pr2_controllers_msgs
	ros-noetic/pr2_gripper_sensor_controller
	ros-noetic/pr2_gripper_sensor_msgs
	ros-noetic/pr2_machine
	ros-noetic/pr2_mechanism_controllers
	ros-noetic/pr2_mechanism_model
	ros-noetic/robot_mechanism_controllers
	ros-noetic/roscpp
"
DEPEND="${RDEPEND}
	ros-noetic/catkin
	ros-noetic/message_generation
"

SLOT="0"
ROS_DISTRO="noetic"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
