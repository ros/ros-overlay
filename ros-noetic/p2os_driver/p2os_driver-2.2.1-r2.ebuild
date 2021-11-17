# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=7
PYTHON_COMPAT=( python{3_8,3_9,3_10} )

inherit ros-cmake

DESCRIPTION="Driver file descriptions for P2OS/ARCOS robot"
HOMEPAGE="http://ros.org/wiki/p2os_driver"
SRC_URI="https://github.com/allenh1/p2os-release/archive/release/noetic/${PN}/2.2.1-2.tar.gz -> ${PN}-noetic-release-${PV}.tar.gz"

LICENSE="GPL-2"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
RDEPEND="
	ros-noetic/diagnostic_updater
	ros-noetic/geometry_msgs
	ros-noetic/kdl_parser
	ros-noetic/message_runtime
	ros-noetic/nav_msgs
	ros-noetic/p2os_msgs
	ros-noetic/roscpp
	ros-noetic/std_msgs
	ros-noetic/tf
"
DEPEND="${RDEPEND}
	ros-noetic/catkin
"

SLOT="0"
ROS_DISTRO="noetic"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
