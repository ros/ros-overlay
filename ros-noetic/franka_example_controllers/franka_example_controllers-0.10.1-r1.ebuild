# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{2_7,3_5,3_6} )

inherit ros-cmake

DESCRIPTION="franka_example_controllers provides example code for controlling Franka Emi[...]"
HOMEPAGE="http://wiki.ros.org/franka_example_controllers"
SRC_URI="https://github.com/frankaemika/franka_ros-release/archive/release/noetic/${PN}/0.10.1-1.tar.gz -> ${PN}-noetic-release-${PV}.tar.gz"

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
	ros-noetic/joint_limits_interface
	ros-noetic/libfranka
	ros-noetic/message_runtime
	ros-noetic/pluginlib
	ros-noetic/realtime_tools
	ros-noetic/roscpp
	ros-noetic/rospy
	ros-noetic/tf
	ros-noetic/tf_conversions
	ros-noetic/urdf
	ros-noetic/visualization_msgs
"
DEPEND="${RDEPEND}
	ros-noetic/catkin
	ros-noetic/message_generation
	dev-cpp/eigen
"

SLOT="0"
ROS_DISTRO="noetic"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
