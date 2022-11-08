# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{3_5,3_6} )

inherit ament-cmake

DESCRIPTION="common_interfaces contains messages and services that are widely used by ot[...]"
HOMEPAGE="https://wiki.ros.org"
SRC_URI="https://github.com/ros2-gbp/${PN}-release/archive/release/humble/${PN}/4.2.2-1.tar.gz -> ${PN}-humble-release-${PV}.tar.gz"

LICENSE="Apache-2.0"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
IUSE="test"
RDEPEND="
	ros-humble/actionlib_msgs
	ros-humble/builtin_interfaces
	ros-humble/diagnostic_msgs
	ros-humble/geometry_msgs
	ros-humble/nav_msgs
	ros-humble/sensor_msgs
	ros-humble/shape_msgs
	ros-humble/std_msgs
	ros-humble/std_srvs
	ros-humble/stereo_msgs
	ros-humble/trajectory_msgs
	ros-humble/visualization_msgs
	test? ( ros-humble/ament_lint_auto )
	test? ( ros-humble/ament_lint_common )
"
DEPEND="${RDEPEND}
	ros-humble/ament_cmake
"

SLOT="0"
ROS_DISTRO="humble"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
