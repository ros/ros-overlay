# Copyright 2020 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{2_7,3_5,3_6} )

inherit ros-cmake

DESCRIPTION="canopen_chain_node specialization for handling of canopen_402 motor devices[...]"
HOMEPAGE="http://wiki.ros.org/canopen_motor_node"
SRC_URI="https://github.com/ros-industrial-release/ros_canopen-release/archive/release/melodic/${PN}/0.8.3-1.tar.gz -> ${PN}-melodic-release-${PV}.tar.gz"

LICENSE="LGPL-2"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
IUSE="test"
RDEPEND="
	ros-melodic/canopen_402
	ros-melodic/canopen_chain_node
	ros-melodic/canopen_master
	ros-melodic/controller_manager
	ros-melodic/controller_manager_msgs
	ros-melodic/filters
	ros-melodic/hardware_interface
	ros-melodic/joint_limits_interface
	ros-melodic/roscpp
	ros-melodic/urdf
	test? ( ros-melodic/rosunit )
	dev-cpp/muParser
"
DEPEND="${RDEPEND}
	ros-melodic/catkin
"

SLOT="0"
ROS_DISTRO="melodic"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
