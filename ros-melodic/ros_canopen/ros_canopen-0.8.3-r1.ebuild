# Copyright 2020 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{2_7,3_5,3_6} )

inherit ros-cmake

DESCRIPTION="A generic canopen implementation for ROS"
HOMEPAGE="http://ros.org/wiki/ros_canopen"
SRC_URI="https://github.com/ros-industrial-release/${PN}-release/archive/release/melodic/${PN}/0.8.3-1.tar.gz -> ${PN}-melodic-release-${PV}.tar.gz"

LICENSE="LGPL-2"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
RDEPEND="
	ros-melodic/can_msgs
	ros-melodic/canopen_402
	ros-melodic/canopen_chain_node
	ros-melodic/canopen_master
	ros-melodic/canopen_motor_node
	ros-melodic/socketcan_bridge
	ros-melodic/socketcan_interface
"
DEPEND="${RDEPEND}
	ros-melodic/catkin
"

SLOT="0"
ROS_DISTRO="melodic"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
