# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=7
PYTHON_COMPAT=( python{3_8,3_9,3_10} )

inherit ros-cmake

DESCRIPTION="canopen_chain_node specialization for handling of canopen_402 motor devices[...]"
HOMEPAGE="http://wiki.ros.org/canopen_motor_node"
SRC_URI="https://github.com/ros-industrial-release/ros_canopen-release/archive/release/noetic/${PN}/0.8.5-1.tar.gz -> ${PN}-noetic-release-${PV}.tar.gz"

LICENSE="LGPL-2"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
IUSE="test"
RDEPEND="
	ros-noetic/canopen_402
	ros-noetic/canopen_chain_node
	ros-noetic/canopen_master
	ros-noetic/controller_manager
	ros-noetic/controller_manager_msgs
	ros-noetic/filters
	ros-noetic/hardware_interface
	ros-noetic/joint_limits_interface
	ros-noetic/roscpp
	ros-noetic/urdf
	test? ( ros-noetic/rosunit )
	dev-cpp/muParser
"
DEPEND="${RDEPEND}
	ros-noetic/catkin
"

SLOT="0"
ROS_DISTRO="noetic"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
