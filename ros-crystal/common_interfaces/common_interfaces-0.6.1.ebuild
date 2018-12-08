# Copyright 2018 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{3_5,3_6} )

inherit ament-cmake

DESCRIPTION="common_interfaces contains messages and services that are widely used by ot[...]"
HOMEPAGE="https://wiki.ros.org"
SRC_URI="https://github.com/ros2-gbp/${PN}-release/archive/release/crystal/${PN}/0.6.1-0.tar.gz -> ${PN}-crystal-release-${PV}.tar.gz"

LICENSE="Apache-2.0"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
RDEPEND="
	ros-crystal/actionlib_msgs
	ros-crystal/builtin_interfaces
	ros-crystal/diagnostic_msgs
	ros-crystal/geometry_msgs
	ros-crystal/nav_msgs
	ros-crystal/sensor_msgs
	ros-crystal/shape_msgs
	ros-crystal/std_msgs
	ros-crystal/std_srvs
	ros-crystal/stereo_msgs
	ros-crystal/trajectory_msgs
	ros-crystal/visualization_msgs
"
DEPEND="${RDEPEND}
	ros-crystal/ament_cmake
"

SLOT="0"
ROS_DISTRO="crystal"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
