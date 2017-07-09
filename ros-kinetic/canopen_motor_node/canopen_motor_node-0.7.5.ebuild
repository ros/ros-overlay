# Copyright 2017 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{2_7,3_5} )

inherit ros-cmake

DESCRIPTION="This package extends the canopen_chain_node with specialized handling for canope"
HOMEPAGE="https://wiki.ros.org"
SRC_URI="https://github.com/ros-industrial-release/ros_canopen-release/archive/release/kinetic/canopen_motor_node/0.7.5-0.tar.gz -> ${PN}-release-${PV}.tar.gz"

LICENSE="LGPL-3"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
RDEPEND="
	ros-kinetic/canopen_402
	ros-kinetic/canopen_chain_node
	ros-kinetic/controller_manager
	ros-kinetic/controller_manager_msgs
	ros-kinetic/filters
	ros-kinetic/hardware_interface
	ros-kinetic/joint_limits_interface
	ros-kinetic/urdf
	dev-cpp/muParser
"
DEPEND="${RDEPEND}
	ros-kinetic/catkin
"

SLOT="0"
ROS_DISTRO="kinetic"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"

