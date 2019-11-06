# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{2_7,3_5,3_6} )

inherit ros-cmake

DESCRIPTION="canopen_chain_node specialization for handling of canopen_402 motor devices[...]"
HOMEPAGE="http://wiki.ros.org/canopen_motor_node"
SRC_URI="https://github.com/ros-industrial-release/ros_canopen-release/archive/release/kinetic/${PN}/0.7.12-1.tar.gz -> ${PN}-kinetic-release-${PV}.tar.gz"

LICENSE="LGPL-2"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
IUSE="test"
RDEPEND="
	ros-kinetic/canopen_402
	ros-kinetic/canopen_chain_node
	ros-kinetic/canopen_master
	ros-kinetic/controller_manager
	ros-kinetic/controller_manager_msgs
	ros-kinetic/filters
	ros-kinetic/hardware_interface
	ros-kinetic/joint_limits_interface
	ros-kinetic/roscpp
	ros-kinetic/urdf
	test? ( ros-kinetic/rosunit )
	dev-cpp/muParser
"
DEPEND="${RDEPEND}
	ros-kinetic/catkin
"

SLOT="0"
ROS_DISTRO="kinetic"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
