# Copyright 2017 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{2_7,3_5} )

inherit ros-cmake

DESCRIPTION="'MAVROS -- MAVLink extendable communication node for ROS
	with proxy for Groun'"
HOMEPAGE="https://wiki.ros.org"
SRC_URI="https://github.com/mavlink/mavros-release/archive/release/indigo/mavros/0.17.5-0.tar.gz -> ${PN}-release-${PV}.tar.gz"

LICENSE="( GPL-3 LGPL-3 BSD )"
KEYWORDS="~x86 ~amd64 ~arm ~arm64"
RDEPEND="
	ros-indigo/diagnostic_msgs
	ros-indigo/diagnostic_updater
	ros-indigo/eigen_conversions
	ros-indigo/geometry_msgs
	ros-indigo/libmavconn
	ros-indigo/mavlink
	ros-indigo/mavros_msgs
	ros-indigo/message_runtime
	ros-indigo/nav_msgs
	ros-indigo/pluginlib
	ros-indigo/rosconsole_bridge
	ros-indigo/roscpp
	ros-indigo/rospy
	ros-indigo/sensor_msgs
	ros-indigo/std_msgs
	ros-indigo/std_srvs
	ros-indigo/tf2_ros
	dev-libs/boost
	dev-cpp/eigen
"
DEPEND="${RDEPEND}
	ros-indigo/angles
	ros-indigo/catkin
	ros-indigo/cmake_modules
"

SLOT="0"
ROS_DISTRO="indigo"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"

