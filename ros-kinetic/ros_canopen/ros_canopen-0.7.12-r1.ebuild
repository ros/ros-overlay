# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{2_7,3_5,3_6} )

inherit ros-cmake

DESCRIPTION="A generic canopen implementation for ROS"
HOMEPAGE="http://ros.org/wiki/ros_canopen"
SRC_URI="https://github.com/ros-industrial-release/${PN}-release/archive/release/kinetic/${PN}/0.7.12-1.tar.gz -> ${PN}-kinetic-release-${PV}.tar.gz"

LICENSE="LGPL-2"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
RDEPEND="
	ros-kinetic/can_msgs
	ros-kinetic/canopen_402
	ros-kinetic/canopen_chain_node
	ros-kinetic/canopen_master
	ros-kinetic/canopen_motor_node
	ros-kinetic/socketcan_bridge
	ros-kinetic/socketcan_interface
"
DEPEND="${RDEPEND}
	ros-kinetic/catkin
"

SLOT="0"
ROS_DISTRO="kinetic"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
