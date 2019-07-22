# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{2_7,3_5,3_6} )

inherit ros-cmake

DESCRIPTION="franka_control provides a hardware node to control a Franka Emika research [...]"
HOMEPAGE="http://wiki.ros.org/franka_control"
SRC_URI="https://github.com/frankaemika/franka_ros-release/archive/release/melodic/${PN}/0.6.0-1.tar.gz -> ${PN}-melodic-release-${PV}.tar.gz"

LICENSE="Apache-2.0"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
RDEPEND="
	ros-melodic/actionlib
	ros-melodic/actionlib_msgs
	ros-melodic/controller_interface
	ros-melodic/controller_manager
	ros-melodic/franka_description
	ros-melodic/franka_gripper
	ros-melodic/franka_hw
	ros-melodic/franka_msgs
	ros-melodic/geometry_msgs
	ros-melodic/joint_state_publisher
	ros-melodic/libfranka
	ros-melodic/message_runtime
	ros-melodic/pluginlib
	ros-melodic/realtime_tools
	ros-melodic/robot_state_publisher
	ros-melodic/roscpp
	ros-melodic/sensor_msgs
	ros-melodic/tf
	ros-melodic/tf2_msgs
"
DEPEND="${RDEPEND}
	ros-melodic/catkin
	ros-melodic/message_generation
"

SLOT="0"
ROS_DISTRO="melodic"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
