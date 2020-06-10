# Copyright 2020 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{3_5,3_6} )

inherit ament-cmake

DESCRIPTION="common_interfaces contains messages and services that are widely used by ot[...]"
HOMEPAGE="https://wiki.ros.org"
SRC_URI="https://github.com/ros2-gbp/${PN}-release/archive/release/foxy/${PN}/2.0.1-1.tar.gz -> ${PN}-foxy-release-${PV}.tar.gz"

LICENSE="Apache-2.0"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
IUSE="test"
RDEPEND="
	ros-foxy/actionlib_msgs
	ros-foxy/builtin_interfaces
	ros-foxy/diagnostic_msgs
	ros-foxy/geometry_msgs
	ros-foxy/nav_msgs
	ros-foxy/sensor_msgs
	ros-foxy/shape_msgs
	ros-foxy/std_msgs
	ros-foxy/std_srvs
	ros-foxy/stereo_msgs
	ros-foxy/trajectory_msgs
	ros-foxy/visualization_msgs
	test? ( ros-foxy/ament_lint_auto )
	test? ( ros-foxy/ament_lint_common )
"
DEPEND="${RDEPEND}
	ros-foxy/ament_cmake
"

SLOT="0"
ROS_DISTRO="foxy"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
