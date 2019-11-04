# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{3_5,3_6} )

inherit ament-cmake

DESCRIPTION="3D interactive marker communication library for RViz and similar tools."
HOMEPAGE="http://ros.org/wiki/interactive_markers"
SRC_URI="https://github.com/ros2-gbp/${PN}-release/archive/release/eloquent/${PN}/2.0.1-1.tar.gz -> ${PN}-eloquent-release-${PV}.tar.gz"

LICENSE="BSD"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
IUSE="test"
RDEPEND="
	ros-eloquent/builtin_interfaces
	ros-eloquent/rclcpp
	ros-eloquent/rclpy
	ros-eloquent/rmw
	ros-eloquent/std_msgs
	ros-eloquent/tf2
	ros-eloquent/tf2_geometry_msgs
	ros-eloquent/visualization_msgs
	test? ( ros-eloquent/ament_cmake_gtest )
	test? ( ros-eloquent/ament_lint_auto )
	test? ( ros-eloquent/ament_lint_common )
	test? ( ros-eloquent/geometry_msgs )
"
DEPEND="${RDEPEND}
	ros-eloquent/ament_cmake
	ros-eloquent/ament_cmake_python
"

SLOT="0"
ROS_DISTRO="eloquent"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
