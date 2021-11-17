# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=7
PYTHON_COMPAT=( python{3_8,3_9,3_10} )

inherit ros-cmake

DESCRIPTION="franka_example_controllers provides example code for controlling Franka Emi[...]"
HOMEPAGE="http://wiki.ros.org/franka_example_controllers"
SRC_URI="https://github.com/frankaemika/franka_ros-release/archive/release/noetic/${PN}/0.8.1-1.tar.gz -> ${PN}-noetic-release-${PV}.tar.gz"

LICENSE="Apache-2.0"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
RDEPEND="
	ros-noetic/controller_interface
	ros-noetic/dynamic_reconfigure
	ros-noetic/eigen_conversions
	ros-noetic/franka_control
	ros-noetic/franka_description
	ros-noetic/franka_gripper
	ros-noetic/franka_hw
	ros-noetic/geometry_msgs
	ros-noetic/hardware_interface
	ros-noetic/libfranka
	ros-noetic/message_runtime
	ros-noetic/panda_moveit_config
	ros-noetic/pluginlib
	ros-noetic/realtime_tools
	ros-noetic/roscpp
	ros-noetic/rospy
	ros-noetic/tf
	ros-noetic/tf_conversions
"
DEPEND="${RDEPEND}
	ros-noetic/catkin
	ros-noetic/message_generation
	dev-cpp/eigen
"

SLOT="0"
ROS_DISTRO="noetic"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
