# Copyright 2020 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{2_7,3_5,3_6} )

inherit ros-cmake

DESCRIPTION="Base implementation for CANopen chains node with support for management ser[...]"
HOMEPAGE="http://wiki.ros.org/canopen_chain_node"
SRC_URI="https://github.com/ros-industrial-release/ros_canopen-release/archive/release/melodic/${PN}/0.8.3-1.tar.gz -> ${PN}-melodic-release-${PV}.tar.gz"

LICENSE="LGPL-2"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
RDEPEND="
	ros-melodic/canopen_master
	ros-melodic/diagnostic_updater
	ros-melodic/message_runtime
	ros-melodic/pluginlib
	ros-melodic/rosconsole_bridge
	ros-melodic/roscpp
	ros-melodic/roslib
	ros-melodic/socketcan_interface
	ros-melodic/std_msgs
	ros-melodic/std_srvs
"
DEPEND="${RDEPEND}
	ros-melodic/catkin
	ros-melodic/message_generation
"

SLOT="0"
ROS_DISTRO="melodic"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
