# Copyright 2018 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{2_7,3_5} )

inherit ros-cmake

DESCRIPTION="This package extends the canopen_chain_node with specialized handling for c[...]"
HOMEPAGE="http://wiki.ros.org/canopen_motor_node"
SRC_URI="https://github.com/ros-industrial-release/ros_canopen-release/archive/release/indigo/${PN}/0.6.9-0.tar.gz -> ${PN}-indigo-release-${PV}.tar.gz"

LICENSE="LGPL-2"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
RDEPEND="
	ros-indigo/canopen_402
	ros-indigo/canopen_chain_node
	ros-indigo/controller_manager
	ros-indigo/controller_manager_msgs
	ros-indigo/filters
	ros-indigo/hardware_interface
	ros-indigo/joint_limits_interface
	ros-indigo/urdf
	dev-cpp/muParser
"
DEPEND="${RDEPEND}
	ros-indigo/catkin
"

SLOT="0"
ROS_DISTRO="indigo"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
