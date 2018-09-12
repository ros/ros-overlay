# Copyright 2018 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{2_7,3_5} )

inherit ros-cmake

DESCRIPTION="canopen_chain_node specialization for handling of canopen_402 motor devices[...]"
HOMEPAGE="http://wiki.ros.org/canopen_motor_node"
SRC_URI="https://github.com/ros-industrial-release/ros_canopen-release/archive/release/lunar/${PN}/0.7.9-0.tar.gz -> ${PN}-lunar-release-${PV}.tar.gz"

LICENSE="LGPL-2"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
IUSE="test"
RDEPEND="
	ros-lunar/canopen_402
	ros-lunar/canopen_chain_node
	ros-lunar/canopen_master
	ros-lunar/controller_manager
	ros-lunar/controller_manager_msgs
	ros-lunar/filters
	ros-lunar/hardware_interface
	ros-lunar/joint_limits_interface
	ros-lunar/roscpp
	ros-lunar/urdf
	test? ( ros-lunar/rosunit )
	dev-cpp/muParser
"
DEPEND="${RDEPEND}
	ros-lunar/catkin
"

SLOT="0"
ROS_DISTRO="lunar"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
