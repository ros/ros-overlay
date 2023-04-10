# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{2_7,3_5,3_6} )

inherit ros-cmake

DESCRIPTION="franka_example_controllers provides example code for controlling Franka Emi[...]"
HOMEPAGE="http://wiki.ros.org/franka_example_controllers"
SRC_URI="https://github.com/frankaemika/franka_ros-release/archive/release/melodic/${PN}/0.10.1-1.tar.gz -> ${PN}-melodic-release-${PV}.tar.gz"

LICENSE="Apache-2.0"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
RDEPEND="
	ros-melodic/controller_interface
	ros-melodic/dynamic_reconfigure
	ros-melodic/eigen_conversions
	ros-melodic/franka_control
	ros-melodic/franka_description
	ros-melodic/franka_gripper
	ros-melodic/franka_hw
	ros-melodic/geometry_msgs
	ros-melodic/hardware_interface
	ros-melodic/joint_limits_interface
	ros-melodic/libfranka
	ros-melodic/message_runtime
	ros-melodic/pluginlib
	ros-melodic/realtime_tools
	ros-melodic/roscpp
	ros-melodic/rospy
	ros-melodic/tf
	ros-melodic/tf_conversions
	ros-melodic/urdf
	ros-melodic/visualization_msgs
"
DEPEND="${RDEPEND}
	ros-melodic/catkin
	ros-melodic/message_generation
	dev-cpp/eigen
"

SLOT="0"
ROS_DISTRO="melodic"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
