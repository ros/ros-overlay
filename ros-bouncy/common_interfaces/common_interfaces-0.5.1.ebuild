# Copyright 2018 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{3_5,3_6} )

inherit ament-cmake

DESCRIPTION="common_interfaces contains messages and services that are widely used by ot[...]"
HOMEPAGE="https://wiki.ros.org"
SRC_URI="https://github.com/ros2-gbp/${PN}-release/archive/release/bouncy/${PN}/0.5.1-0.tar.gz -> ${PN}-bouncy-release-${PV}.tar.gz"

LICENSE="Apache-2.0"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
RDEPEND="
	ros-bouncy/actionlib_msgs
	ros-bouncy/builtin_interfaces
	ros-bouncy/diagnostic_msgs
	ros-bouncy/geometry_msgs
	ros-bouncy/nav_msgs
	ros-bouncy/sensor_msgs
	ros-bouncy/shape_msgs
	ros-bouncy/std_msgs
	ros-bouncy/std_srvs
	ros-bouncy/stereo_msgs
	ros-bouncy/trajectory_msgs
	ros-bouncy/visualization_msgs
"
DEPEND="${RDEPEND}
	ros-bouncy/ament_cmake
"

SLOT="0"
ROS_DISTRO="bouncy"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
