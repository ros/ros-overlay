# Copyright 2018 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{2_7,3_5} )

inherit ros-cmake

DESCRIPTION="A generic canopen implementation for ROS"
HOMEPAGE="http://ros.org/wiki/ros_canopen"
SRC_URI="https://github.com/ros-industrial-release/${PN}-release/archive/release/indigo/${PN}/0.6.9-0.tar.gz -> ${PN}-indigo-release-${PV}.tar.gz"

LICENSE="LGPL-2"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
RDEPEND="
	ros-indigo/can_msgs
	ros-indigo/canopen_402
	ros-indigo/canopen_chain_node
	ros-indigo/canopen_master
	ros-indigo/canopen_motor_node
	ros-indigo/socketcan_bridge
	ros-indigo/socketcan_interface
"
DEPEND="${RDEPEND}
	ros-indigo/catkin
"

SLOT="0"
ROS_DISTRO="indigo"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
