# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{2_7,3_5,3_6} )

inherit ros-cmake

DESCRIPTION="The move_base_sequence package"
HOMEPAGE="https://wiki.ros.org"
SRC_URI="https://github.com/MarkNaeem/${PN}-release/archive/release/melodic/${PN}/0.0.1-2.tar.gz -> ${PN}-melodic-release-${PV}.tar.gz"

LICENSE="GPL-3.0-only"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
RDEPEND="
	ros-melodic/actionlib
	ros-melodic/actionlib_msgs
	ros-melodic/geometry_msgs
	ros-melodic/message_runtime
	ros-melodic/move_base_msgs
	ros-melodic/nav_msgs
	ros-melodic/rospy
	ros-melodic/std_msgs
"
DEPEND="${RDEPEND}
	ros-melodic/catkin
	ros-melodic/message_generation
"

SLOT="0"
ROS_DISTRO="melodic"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
