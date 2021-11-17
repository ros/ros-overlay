# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=7
PYTHON_COMPAT=( python{3_8,3_9,3_10} )

inherit ros-cmake

DESCRIPTION="franka_control provides a hardware node to control a Franka Emika research [...]"
HOMEPAGE="http://wiki.ros.org/franka_control"
SRC_URI="https://github.com/frankaemika/franka_ros-release/archive/release/noetic/${PN}/0.8.1-1.tar.gz -> ${PN}-noetic-release-${PV}.tar.gz"

LICENSE="Apache-2.0"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
RDEPEND="
	ros-noetic/controller_interface
	ros-noetic/controller_manager
	ros-noetic/franka_description
	ros-noetic/franka_gripper
	ros-noetic/franka_hw
	ros-noetic/franka_msgs
	ros-noetic/geometry_msgs
	ros-noetic/joint_state_publisher
	ros-noetic/libfranka
	ros-noetic/pluginlib
	ros-noetic/realtime_tools
	ros-noetic/robot_state_publisher
	ros-noetic/roscpp
	ros-noetic/sensor_msgs
	ros-noetic/std_srvs
	ros-noetic/tf
	ros-noetic/tf2_msgs
"
DEPEND="${RDEPEND}
	ros-noetic/catkin
"

SLOT="0"
ROS_DISTRO="noetic"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
