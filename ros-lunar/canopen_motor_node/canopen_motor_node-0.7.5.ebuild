# Copyright 2017 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6

inherit ros-cmake
DESCRIPTION="This package extends the canopen_chain_node with specialized handling for canope"
HOMEPAGE="https://wiki.ros.org"
SRC_URI="https://github.com/ros-industrial-release/ros_canopen-release/archive/release/lunar/canopen_motor_node/0.7.5-0.tar.gz -> ${PN}-${PV}.tar.gz"

LICENSE="LGPL-3"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
PYTHON_DEPEND="3::3.5"

RDEPEND="
	ros-lunar/canopen_402
	ros-lunar/canopen_chain_node
	ros-lunar/controller_manager
	ros-lunar/controller_manager_msgs
	ros-lunar/filters
	ros-lunar/hardware_interface
	ros-lunar/joint_limits_interface
	ros-lunar/urdf
	dev-cpp/muParser
"
DEPEND="${RDEPEND}
	ros-lunar/catkin
"

SLOT="lunar"
CMAKE_BUILD_TYPE=RelWithDebInfo
ROS_DISTRO="lunar"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"

