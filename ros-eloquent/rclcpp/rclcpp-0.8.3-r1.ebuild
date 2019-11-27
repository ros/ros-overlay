# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{3_5,3_6} )

inherit ament-cmake

DESCRIPTION="The ROS client library in C++."
HOMEPAGE="https://wiki.ros.org"
SRC_URI="https://github.com/ros2-gbp/${PN}-release/archive/release/eloquent/${PN}/0.8.3-1.tar.gz -> ${PN}-eloquent-release-${PV}.tar.gz"

LICENSE="Apache-2.0"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
IUSE="test"
RDEPEND="
	ros-eloquent/ament_cmake
	ros-eloquent/builtin_interfaces
	ros-eloquent/rcl
	ros-eloquent/rcl_interfaces
	ros-eloquent/rcl_yaml_param_parser
	ros-eloquent/rcpputils
	ros-eloquent/rmw
	ros-eloquent/rmw_implementation
	ros-eloquent/rosgraph_msgs
	ros-eloquent/rosidl_generator_cpp
	ros-eloquent/rosidl_typesupport_c
	ros-eloquent/rosidl_typesupport_cpp
	ros-eloquent/tracetools
	test? ( ros-eloquent/ament_cmake_gmock )
	test? ( ros-eloquent/ament_cmake_gtest )
	test? ( ros-eloquent/ament_lint_auto )
	test? ( ros-eloquent/ament_lint_common )
	test? ( ros-eloquent/rmw )
	test? ( ros-eloquent/rmw_implementation_cmake )
	test? ( ros-eloquent/test_msgs )
"
DEPEND="${RDEPEND}
	ros-eloquent/ament_cmake_ros
"

SLOT="0"
ROS_DISTRO="eloquent"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
