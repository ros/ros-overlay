# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=7
PYTHON_COMPAT=( python{3_8,3_9,3_10} )

inherit ament-cmake

DESCRIPTION="The ROS client library in C++."
HOMEPAGE="https://wiki.ros.org"
SRC_URI="https://github.com/ros2-gbp/${PN}-release/archive/release/galactic/${PN}/9.2.0-1.tar.gz -> ${PN}-galactic-release-${PV}.tar.gz"

LICENSE="Apache-2.0"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
IUSE="test"
RDEPEND="
	ros-galactic/ament_index_cpp
	ros-galactic/builtin_interfaces
	ros-galactic/libstatistics_collector
	ros-galactic/rcl
	ros-galactic/rcl_interfaces
	ros-galactic/rcl_yaml_param_parser
	ros-galactic/rcpputils
	ros-galactic/rcutils
	ros-galactic/rmw
	ros-galactic/rosgraph_msgs
	ros-galactic/rosidl_runtime_cpp
	ros-galactic/rosidl_typesupport_c
	ros-galactic/rosidl_typesupport_cpp
	ros-galactic/statistics_msgs
	ros-galactic/tracetools
	test? ( ros-galactic/ament_cmake_gmock )
	test? ( ros-galactic/ament_cmake_gtest )
	test? ( ros-galactic/ament_lint_auto )
	test? ( ros-galactic/ament_lint_common )
	test? ( ros-galactic/mimick_vendor )
	test? ( ros-galactic/performance_test_fixture )
	test? ( ros-galactic/rmw )
	test? ( ros-galactic/rmw_implementation_cmake )
	test? ( ros-galactic/rosidl_default_generators )
	test? ( ros-galactic/test_msgs )
"
DEPEND="${RDEPEND}
	ros-galactic/ament_cmake_ros
"

SLOT="0"
ROS_DISTRO="galactic"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
