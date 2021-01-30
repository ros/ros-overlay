# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{2_7,3_5,3_6} )

inherit ros-cmake

DESCRIPTION="franka_hw provides hardware interfaces for using Franka Emika research robo[...]"
HOMEPAGE="http://wiki.ros.org/franka_hw"
SRC_URI="https://github.com/frankaemika/franka_ros-release/archive/release/noetic/${PN}/0.7.1-1.tar.gz -> ${PN}-noetic-release-${PV}.tar.gz"

LICENSE="Apache-2.0"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
IUSE="test"
RDEPEND="
	ros-noetic/actionlib
	ros-noetic/actionlib_msgs
	ros-noetic/combined_robot_hw
	ros-noetic/controller_interface
	ros-noetic/franka_msgs
	ros-noetic/hardware_interface
	ros-noetic/joint_limits_interface
	ros-noetic/libfranka
	ros-noetic/pluginlib
	ros-noetic/roscpp
	ros-noetic/urdf
	test? ( ros-noetic/franka_description )
	test? ( ros-noetic/rostest )
	test? ( dev-cpp/gtest )
"
DEPEND="${RDEPEND}
	ros-noetic/catkin
	ros-noetic/message_generation
"

SLOT="0"
ROS_DISTRO="noetic"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
