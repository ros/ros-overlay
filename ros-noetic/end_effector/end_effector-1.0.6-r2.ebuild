# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=7
PYTHON_COMPAT=( python{3_8,3_9,3_10} )

inherit ros-cmake

DESCRIPTION="End-Effector package: provides a ROS-based set of standard interfaces to co[...]"
HOMEPAGE="https://advrhumanoids.github.io/ROSEndEffectorDocs/"
SRC_URI="https://github.com/ADVRHumanoids/ROSEndEffector-release/archive/release/noetic/${PN}/1.0.6-2.tar.gz -> ${PN}-noetic-release-${PV}.tar.gz"

LICENSE="Apache-2.0"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
IUSE="test"
RDEPEND="
	ros-noetic/joint_state_publisher_gui
	ros-noetic/kdl_parser
	ros-noetic/message_runtime
	ros-noetic/moveit_ros_planning_interface
	ros-noetic/roscpp
	ros-noetic/rosee_msg
	ros-noetic/rospy
	ros-noetic/srdfdom
	dev-cpp/muParser
	dev-cpp/yaml-cpp
	test? ( dev-cpp/gtest )
"
DEPEND="${RDEPEND}
	ros-noetic/catkin
"

SLOT="0"
ROS_DISTRO="noetic"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
