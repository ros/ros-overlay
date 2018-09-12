# Copyright 2018 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{2_7,3_5,3_6} )

inherit ros-cmake

DESCRIPTION="The pr2_gripper_sensor_action package provides an action interface for talk[...]"
HOMEPAGE="None"
SRC_URI="https://github.com/pr2-gbp/pr2_gripper_sensor-release/archive/release/kinetic/${PN}/1.0.10-0.tar.gz -> ${PN}-kinetic-release-${PV}.tar.gz"

LICENSE="BSD"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
RDEPEND="
	ros-kinetic/actionlib
	ros-kinetic/actionlib_msgs
	ros-kinetic/message_runtime
	ros-kinetic/pr2_controllers_msgs
	ros-kinetic/pr2_gripper_sensor_controller
	ros-kinetic/pr2_gripper_sensor_msgs
	ros-kinetic/pr2_machine
	ros-kinetic/pr2_mechanism_controllers
	ros-kinetic/pr2_mechanism_model
	ros-kinetic/robot_mechanism_controllers
	ros-kinetic/roscpp
"
DEPEND="${RDEPEND}
	ros-kinetic/catkin
	ros-kinetic/message_generation
"

SLOT="0"
ROS_DISTRO="kinetic"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
