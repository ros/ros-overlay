# Copyright 2018 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{2_7,3_5} )

inherit ros-cmake

DESCRIPTION="franka_control provides a hardware node to control a Franka Emika research [...]"
HOMEPAGE="http://wiki.ros.org/franka_control"
SRC_URI="https://github.com/frankaemika/franka_ros-release/archive/release/kinetic/${PN}/0.4.0-0.tar.gz -> ${PN}-kinetic-release-${PV}.tar.gz"

LICENSE="Apache-2.0"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
RDEPEND="
	ros-kinetic/actionlib
	ros-kinetic/actionlib_msgs
	ros-kinetic/controller_interface
	ros-kinetic/controller_manager
	ros-kinetic/franka_description
	ros-kinetic/franka_hw
	ros-kinetic/franka_msgs
	ros-kinetic/geometry_msgs
	ros-kinetic/joint_state_publisher
	ros-kinetic/libfranka
	ros-kinetic/message_runtime
	ros-kinetic/pluginlib
	ros-kinetic/realtime_tools
	ros-kinetic/robot_state_publisher
	ros-kinetic/roscpp
	ros-kinetic/sensor_msgs
	ros-kinetic/tf
	ros-kinetic/tf2_msgs
"
DEPEND="${RDEPEND}
	ros-kinetic/catkin
	ros-kinetic/message_generation
"

SLOT="0"
ROS_DISTRO="kinetic"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
