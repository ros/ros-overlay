# Copyright 2017 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6

inherit ros-cmake
DESCRIPTION="ROS node base implementation for CANopen chains with support for management serv"
HOMEPAGE="https://wiki.ros.org"
SRC_URI="https://github.com/ros-industrial-release/ros_canopen-release/archive/release/lunar/canopen_chain_node/0.7.5-0.tar.gz -> ${PN}-${PV}.tar.gz"

LICENSE="LGPL-3"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
PYTHON_DEPEND="3::3.5"

RDEPEND="
	ros-lunar/canopen_master
	ros-lunar/diagnostic_updater
	ros-lunar/message_runtime
	ros-lunar/pluginlib
	ros-lunar/roscpp
	ros-lunar/roslib
	ros-lunar/socketcan_interface
	ros-lunar/std_msgs
	ros-lunar/std_srvs
"
DEPEND="${RDEPEND}
	ros-lunar/catkin
	ros-lunar/message_generation
"

SLOT="lunar"
CMAKE_BUILD_TYPE=RelWithDebInfo
ROS_DISTRO="lunar"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"

