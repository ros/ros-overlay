# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{3_5,3_6} )

inherit ament-cmake

DESCRIPTION="common_interfaces contains messages and services that are widely used by ot[...]"
HOMEPAGE="https://wiki.ros.org"
SRC_URI="https://github.com/ros2-gbp/${PN}-release/archive/release/dashing/${PN}/0.7.0-1.tar.gz -> ${PN}-dashing-release-${PV}.tar.gz"

LICENSE="Apache-2.0"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
RDEPEND="
	ros-dashing/actionlib_msgs
	ros-dashing/builtin_interfaces
	ros-dashing/diagnostic_msgs
	ros-dashing/geometry_msgs
	ros-dashing/nav_msgs
	ros-dashing/sensor_msgs
	ros-dashing/shape_msgs
	ros-dashing/std_msgs
	ros-dashing/std_srvs
	ros-dashing/stereo_msgs
	ros-dashing/trajectory_msgs
	ros-dashing/visualization_msgs
"
DEPEND="${RDEPEND}
	ros-dashing/ament_cmake
"

SLOT="0"
ROS_DISTRO="dashing"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
