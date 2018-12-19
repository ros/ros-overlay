# Copyright 2018 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{2_7,3_5,3_6} )

inherit ros-cmake

DESCRIPTION="This provides a ROS node for the PR2 Power Board."
HOMEPAGE="http://www.ros.org/wiki/pr2_power_board"
SRC_URI="https://github.com/pr2-gbp/pr2_power_drivers-release/archive/release/kinetic/${PN}/1.1.7-0.tar.gz -> ${PN}-kinetic-release-${PV}.tar.gz"

LICENSE="BSD"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
RDEPEND="
	ros-kinetic/diagnostic_msgs
	ros-kinetic/diagnostic_updater
	ros-kinetic/message_runtime
	ros-kinetic/pr2_msgs
	ros-kinetic/roscpp
	ros-kinetic/rospy
	dev-libs/log4cxx
"
DEPEND="${RDEPEND}
	ros-kinetic/catkin
	ros-kinetic/message_generation
"

SLOT="0"
ROS_DISTRO="kinetic"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
