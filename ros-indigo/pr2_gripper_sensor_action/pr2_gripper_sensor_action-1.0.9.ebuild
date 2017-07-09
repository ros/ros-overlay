# Copyright 2017 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{2_7,3_5} )

inherit ros-cmake

DESCRIPTION="'The pr2_gripper_sensor_action package provides an action interface for talking t'"
HOMEPAGE="None"
SRC_URI="https://github.com/pr2-gbp/pr2_gripper_sensor-release/archive/release/indigo/pr2_gripper_sensor_action/1.0.9-0.tar.gz -> ${PN}-release-${PV}.tar.gz"

LICENSE="BSD"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
RDEPEND="
	ros-indigo/actionlib
	ros-indigo/actionlib_msgs
	ros-indigo/message_runtime
	ros-indigo/pr2_controllers_msgs
	ros-indigo/pr2_gripper_sensor_controller
	ros-indigo/pr2_gripper_sensor_msgs
	ros-indigo/pr2_machine
	ros-indigo/pr2_mechanism_controllers
	ros-indigo/pr2_mechanism_model
	ros-indigo/robot_mechanism_controllers
	ros-indigo/roscpp
"
DEPEND="${RDEPEND}
	ros-indigo/catkin
	ros-indigo/message_generation
"

SLOT="0"
ROS_DISTRO="indigo"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"

