# Copyright 2018 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{3_5,3_6} )

inherit ament-cmake

DESCRIPTION="This package defines messages commonly used in mapping packages."
HOMEPAGE="http://ros.org/wiki/map_msgs"
SRC_URI="https://github.com/ros2-gbp/navigation_msgs-release/archive/release/bouncy/${PN}/2.0.0-0.tar.gz -> ${PN}-bouncy-release-${PV}.tar.gz"

LICENSE="BSD"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
IUSE="test"
RDEPEND="
	ros-bouncy/nav_msgs
	ros-bouncy/rosidl_default_runtime
	ros-bouncy/sensor_msgs
	ros-bouncy/std_msgs
	test? ( ros-bouncy/ament_lint_common )
"
DEPEND="${RDEPEND}
	ros-bouncy/ament_cmake
	ros-bouncy/rosidl_default_generators
"

SLOT="0"
ROS_DISTRO="bouncy"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
