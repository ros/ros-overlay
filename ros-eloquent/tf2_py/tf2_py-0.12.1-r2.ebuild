# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{3_5,3_6} )

inherit ament-cmake

DESCRIPTION="The tf2_py package"
HOMEPAGE="http://ros.org/wiki/tf2_py"
SRC_URI="https://github.com/ros2-gbp/geometry2-release/archive/release/eloquent/${PN}/0.12.1-2.tar.gz -> ${PN}-eloquent-release-${PV}.tar.gz"

LICENSE="BSD"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
IUSE="test"
RDEPEND="
	ros-eloquent/builtin_interfaces
	ros-eloquent/geometry_msgs
	ros-eloquent/rclpy
	ros-eloquent/tf2
	test? ( ros-eloquent/ament_cmake_pytest )
	test? ( ros-eloquent/ament_lint_auto )
"
DEPEND="${RDEPEND}
	ros-eloquent/ament_cmake
	ros-eloquent/python_cmake_module
"

SLOT="0"
ROS_DISTRO="eloquent"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
