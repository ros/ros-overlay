# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=7
PYTHON_COMPAT=( python{3_8,3_9,3_10} )

inherit ament-cmake

DESCRIPTION="3D interactive marker communication library for RViz and similar tools."
HOMEPAGE="http://ros.org/wiki/interactive_markers"
SRC_URI="https://github.com/ros2-gbp/${PN}-release/archive/release/galactic/${PN}/2.2.0-2.tar.gz -> ${PN}-galactic-release-${PV}.tar.gz"

LICENSE="BSD"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
IUSE="test"
RDEPEND="
	ros-galactic/builtin_interfaces
	ros-galactic/rclcpp
	ros-galactic/rclpy
	ros-galactic/rmw
	ros-galactic/std_msgs
	ros-galactic/tf2
	ros-galactic/tf2_geometry_msgs
	ros-galactic/visualization_msgs
	test? ( ros-galactic/ament_cmake_gtest )
	test? ( ros-galactic/ament_lint_auto )
	test? ( ros-galactic/ament_lint_common )
	test? ( ros-galactic/geometry_msgs )
"
DEPEND="${RDEPEND}
	ros-galactic/ament_cmake
	ros-galactic/ament_cmake_python
"

SLOT="0"
ROS_DISTRO="galactic"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
