# Copyright 2018 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{2_7,3_5} )

inherit ros-cmake

DESCRIPTION="common_interfaces contains messages and services that are widely used by ot[...]"
HOMEPAGE="https://wiki.ros.org"
SRC_URI="https://github.com/ros2-gbp/${PN}-release/archive/release/ardent/${PN}/0.4.0-0.tar.gz -> ${PN}-ardent-release-${PV}.tar.gz"

LICENSE="Apache-2.0"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
RDEPEND="
	ros-ardent/actionlib_msgs
	ros-ardent/builtin_interfaces
	ros-ardent/diagnostic_msgs
	ros-ardent/geometry_msgs
	ros-ardent/nav_msgs
	ros-ardent/sensor_msgs
	ros-ardent/shape_msgs
	ros-ardent/std_msgs
	ros-ardent/std_srvs
	ros-ardent/stereo_msgs
	ros-ardent/trajectory_msgs
	ros-ardent/visualization_msgs
"
DEPEND="${RDEPEND}
	ros-ardent/ament_cmake
"

SLOT="0"
ROS_DISTRO="ardent"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
