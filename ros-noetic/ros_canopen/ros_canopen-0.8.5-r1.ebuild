# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=7
PYTHON_COMPAT=( python{3_8,3_9,3_10} )

inherit ros-cmake

DESCRIPTION="A generic canopen implementation for ROS"
HOMEPAGE="http://ros.org/wiki/ros_canopen"
SRC_URI="https://github.com/ros-industrial-release/${PN}-release/archive/release/noetic/${PN}/0.8.5-1.tar.gz -> ${PN}-noetic-release-${PV}.tar.gz"

LICENSE="LGPL-2"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
RDEPEND="
	ros-noetic/can_msgs
	ros-noetic/canopen_402
	ros-noetic/canopen_chain_node
	ros-noetic/canopen_master
	ros-noetic/canopen_motor_node
	ros-noetic/socketcan_bridge
	ros-noetic/socketcan_interface
"
DEPEND="${RDEPEND}
	ros-noetic/catkin
"

SLOT="0"
ROS_DISTRO="noetic"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
