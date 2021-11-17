# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=7
PYTHON_COMPAT=( python{3_8,3_9,3_10} )

inherit ros-cmake

DESCRIPTION="Base implementation for CANopen chains node with support for management ser[...]"
HOMEPAGE="http://wiki.ros.org/canopen_chain_node"
SRC_URI="https://github.com/ros-industrial-release/ros_canopen-release/archive/release/noetic/${PN}/0.8.5-1.tar.gz -> ${PN}-noetic-release-${PV}.tar.gz"

LICENSE="LGPL-2"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
RDEPEND="
	ros-noetic/canopen_master
	ros-noetic/diagnostic_updater
	ros-noetic/message_runtime
	ros-noetic/pluginlib
	ros-noetic/rosconsole_bridge
	ros-noetic/roscpp
	ros-noetic/roslib
	ros-noetic/socketcan_interface
	ros-noetic/std_msgs
	ros-noetic/std_srvs
"
DEPEND="${RDEPEND}
	ros-noetic/catkin
	ros-noetic/message_generation
"

SLOT="0"
ROS_DISTRO="noetic"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
