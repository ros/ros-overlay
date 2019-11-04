# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{3_5,3_6} )

inherit ament-cmake

DESCRIPTION="common_interfaces contains messages and services that are widely used by ot[...]"
HOMEPAGE="https://wiki.ros.org"
SRC_URI="https://github.com/ros2-gbp/${PN}-release/archive/release/eloquent/${PN}/0.8.1-1.tar.gz -> ${PN}-eloquent-release-${PV}.tar.gz"

LICENSE="Apache-2.0"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
RDEPEND="
	ros-eloquent/actionlib_msgs
	ros-eloquent/builtin_interfaces
	ros-eloquent/diagnostic_msgs
	ros-eloquent/geometry_msgs
	ros-eloquent/nav_msgs
	ros-eloquent/sensor_msgs
	ros-eloquent/shape_msgs
	ros-eloquent/std_msgs
	ros-eloquent/std_srvs
	ros-eloquent/stereo_msgs
	ros-eloquent/trajectory_msgs
	ros-eloquent/visualization_msgs
"
DEPEND="${RDEPEND}
	ros-eloquent/ament_cmake
"

SLOT="0"
ROS_DISTRO="eloquent"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
