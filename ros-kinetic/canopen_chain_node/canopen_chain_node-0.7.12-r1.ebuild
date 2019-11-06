# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{2_7,3_5,3_6} )

inherit ros-cmake

DESCRIPTION="Base implementation for CANopen chains node with support for management ser[...]"
HOMEPAGE="http://wiki.ros.org/canopen_chain_node"
SRC_URI="https://github.com/ros-industrial-release/ros_canopen-release/archive/release/kinetic/${PN}/0.7.12-1.tar.gz -> ${PN}-kinetic-release-${PV}.tar.gz"

LICENSE="LGPL-2"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
RDEPEND="
	ros-kinetic/canopen_master
	ros-kinetic/diagnostic_updater
	ros-kinetic/message_runtime
	ros-kinetic/pluginlib
	ros-kinetic/roscpp
	ros-kinetic/roslib
	ros-kinetic/socketcan_interface
	ros-kinetic/std_msgs
	ros-kinetic/std_srvs
"
DEPEND="${RDEPEND}
	ros-kinetic/catkin
	ros-kinetic/message_generation
"

SLOT="0"
ROS_DISTRO="kinetic"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
