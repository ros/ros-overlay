# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{2_7,3_5,3_6} )

inherit ros-cmake

DESCRIPTION="An action interface to MoveIt!\'s pick-and-place for Care-O-bot"
HOMEPAGE="http://ros.org/wiki/cob_manipulation/"
SRC_URI="https://github.com/ipa320/cob_manipulation-release/archive/release/kinetic/${PN}/0.7.2-1.tar.gz -> ${PN}-kinetic-release-${PV}.tar.gz"

LICENSE="Apache-2.0"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
RDEPEND="
	ros-kinetic/actionlib
	ros-kinetic/actionlib_msgs
	ros-kinetic/cob_grasp_generation
	ros-kinetic/cob_moveit_interface
	ros-kinetic/geometric_shapes
	ros-kinetic/geometry_msgs
	ros-kinetic/message_runtime
	ros-kinetic/moveit_msgs
	ros-kinetic/moveit_ros_move_group
	ros-kinetic/moveit_ros_planning_interface
	ros-kinetic/roscpp
	ros-kinetic/rospy
	ros-kinetic/std_msgs
	ros-kinetic/tf
"
DEPEND="${RDEPEND}
	ros-kinetic/catkin
	ros-kinetic/message_generation
"

SLOT="0"
ROS_DISTRO="kinetic"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
