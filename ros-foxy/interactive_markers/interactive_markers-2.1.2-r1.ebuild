# Copyright 2020 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{3_5,3_6} )

inherit ament-cmake

DESCRIPTION="3D interactive marker communication library for RViz and similar tools."
HOMEPAGE="http://ros.org/wiki/interactive_markers"
SRC_URI="https://github.com/ros2-gbp/${PN}-release/archive/release/foxy/${PN}/2.1.2-1.tar.gz -> ${PN}-foxy-release-${PV}.tar.gz"

LICENSE="BSD"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
IUSE="test"
RDEPEND="
	ros-foxy/builtin_interfaces
	ros-foxy/rclcpp
	ros-foxy/rclpy
	ros-foxy/rmw
	ros-foxy/std_msgs
	ros-foxy/tf2
	ros-foxy/tf2_geometry_msgs
	ros-foxy/visualization_msgs
	test? ( ros-foxy/ament_cmake_gtest )
	test? ( ros-foxy/ament_lint_auto )
	test? ( ros-foxy/ament_lint_common )
	test? ( ros-foxy/geometry_msgs )
"
DEPEND="${RDEPEND}
	ros-foxy/ament_cmake
	ros-foxy/ament_cmake_python
"

SLOT="0"
ROS_DISTRO="foxy"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
