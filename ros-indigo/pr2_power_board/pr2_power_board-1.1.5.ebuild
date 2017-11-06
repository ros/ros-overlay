# Copyright 2017 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{2_7,3_5} )

inherit ros-cmake

DESCRIPTION="This provides a ROS node for the PR2 Power Board."
HOMEPAGE="http://www.ros.org/wiki/pr2_power_board"
SRC_URI="https://github.com/pr2-gbp/pr2_power_drivers-release/archive/release/indigo/pr2_power_board/1.1.5-0.tar.gz -> ${PN}-indigo-release-${PV}.tar.gz"

LICENSE="BSD"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
RDEPEND="
	ros-indigo/diagnostic_msgs
	ros-indigo/diagnostic_updater
	ros-indigo/message_runtime
	ros-indigo/pr2_msgs
	ros-indigo/roscpp
	ros-indigo/rospy
	dev-libs/log4cxx
"
DEPEND="${RDEPEND}
	ros-indigo/catkin
	ros-indigo/message_generation
"

SLOT="0"
ROS_DISTRO="indigo"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
