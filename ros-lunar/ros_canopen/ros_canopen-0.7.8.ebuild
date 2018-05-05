# Copyright 2018 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{2_7,3_5} )

inherit ros-cmake

DESCRIPTION="A generic canopen implementation for ROS"
HOMEPAGE="http://ros.org/wiki/ros_canopen"
SRC_URI="https://github.com/ros-industrial-release/${PN}-release/archive/release/lunar/${PN}/0.7.8-0.tar.gz -> ${PN}-lunar-release-${PV}.tar.gz"

LICENSE="LGPL-2"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
RDEPEND="
	ros-lunar/can_msgs
	ros-lunar/canopen_402
	ros-lunar/canopen_chain_node
	ros-lunar/canopen_master
	ros-lunar/canopen_motor_node
	ros-lunar/socketcan_bridge
	ros-lunar/socketcan_interface
"
DEPEND="${RDEPEND}
	ros-lunar/catkin
"

SLOT="0"
ROS_DISTRO="lunar"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
