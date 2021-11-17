# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=7
PYTHON_COMPAT=( python{3_8,3_9,3_10} )

inherit ros-cmake

DESCRIPTION="This provides a ROS node for the PR2 Power Board."
HOMEPAGE="http://www.ros.org/wiki/pr2_power_board"
SRC_URI="https://github.com/pr2-gbp/pr2_power_drivers-release/archive/release/noetic/${PN}/1.1.10-1.tar.gz -> ${PN}-noetic-release-${PV}.tar.gz"

LICENSE="BSD"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
RDEPEND="
	ros-noetic/diagnostic_msgs
	ros-noetic/diagnostic_updater
	ros-noetic/message_runtime
	ros-noetic/pr2_msgs
	ros-noetic/roscpp
	ros-noetic/rospy
	dev-libs/log4cxx
"
DEPEND="${RDEPEND}
	ros-noetic/catkin
	ros-noetic/message_generation
	dev-libs/boost
"

SLOT="0"
ROS_DISTRO="noetic"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
