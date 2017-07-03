# Copyright 2017 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{2_7,3_5} )

inherit ros-cmake
DESCRIPTION="MAVROS -- MAVLink extendable communication node for ROS
	with proxy for Groun"
HOMEPAGE="https://wiki.ros.org"
SRC_URI="https://github.com/mavlink/mavros-release/archive/release/lunar/mavros/0.19.0-0.tar.gz -> ${PN}-${PV}.tar.gz"

LICENSE="( GPL-3 LGPL-3 BSD )"
KEYWORDS="~x86 ~amd64 ~arm ~arm64"
RDEPEND="
	ros-lunar/diagnostic_msgs
	ros-lunar/diagnostic_updater
	ros-lunar/eigen_conversions
	ros-lunar/geometry_msgs
	ros-lunar/libmavconn
	ros-lunar/mavlink
	ros-lunar/mavros_msgs
	ros-lunar/message_runtime
	ros-lunar/nav_msgs
	ros-lunar/pluginlib
	ros-lunar/rosconsole_bridge
	ros-lunar/roscpp
	ros-lunar/rospy
	ros-lunar/sensor_msgs
	ros-lunar/std_msgs
	ros-lunar/std_srvs
	ros-lunar/tf2_ros
	dev-libs/boost
	dev-cpp/eigen
"
DEPEND="${RDEPEND}
	ros-lunar/angles
	ros-lunar/catkin
	ros-lunar/cmake_modules
"

SLOT="lunar"
CMAKE_BUILD_TYPE=RelWithDebInfo
ROS_DISTRO="lunar"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"

