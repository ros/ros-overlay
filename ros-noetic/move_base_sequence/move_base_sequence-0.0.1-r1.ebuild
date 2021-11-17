# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=7
PYTHON_COMPAT=( python{3_8,3_9,3_10} )

inherit ros-cmake

DESCRIPTION="The move_base_sequence package"
HOMEPAGE="https://wiki.ros.org"
SRC_URI="https://github.com/MarkNaeem/${PN}-release/archive/release/noetic/${PN}/0.0.1-1.tar.gz -> ${PN}-noetic-release-${PV}.tar.gz"

LICENSE="GPL-3"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
RDEPEND="
	ros-noetic/actionlib
	ros-noetic/actionlib_msgs
	ros-noetic/geometry_msgs
	ros-noetic/message_runtime
	ros-noetic/move_base_msgs
	ros-noetic/nav_msgs
	ros-noetic/rospy
	ros-noetic/std_msgs
"
DEPEND="${RDEPEND}
	ros-noetic/catkin
	ros-noetic/message_generation
"

SLOT="0"
ROS_DISTRO="noetic"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
