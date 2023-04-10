# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{2_7,3_5,3_6} )

inherit ros-cmake

DESCRIPTION="End-Effector package: provides a ROS-based set of standard interfaces to co[...]"
HOMEPAGE="https://advrhumanoids.github.io/ROSEndEffectorDocs/"
SRC_URI="https://github.com/ADVRHumanoids/ROSEndEffector-release/archive/release/melodic/${PN}/1.0.6-2.tar.gz -> ${PN}-melodic-release-${PV}.tar.gz"

LICENSE="Apache-2.0"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
IUSE="test"
RDEPEND="
	ros-melodic/joint_state_publisher_gui
	ros-melodic/kdl_parser
	ros-melodic/message_runtime
	ros-melodic/moveit_ros_planning_interface
	ros-melodic/roscpp
	ros-melodic/rosee_msg
	ros-melodic/rospy
	ros-melodic/srdfdom
	dev-cpp/muParser
	dev-cpp/yaml-cpp
	test? ( dev-cpp/gtest )
"
DEPEND="${RDEPEND}
	ros-melodic/catkin
"

SLOT="0"
ROS_DISTRO="melodic"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
