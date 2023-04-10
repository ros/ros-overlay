# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=8
PYTHON_COMPAT=( python{3_8,3_9,3_10,3_11} )

inherit ament-cmake

DESCRIPTION="The ROS client library in C++."
HOMEPAGE="https://wiki.ros.org"
SRC_URI="https://github.com/ros2-gbp/${PN}-release/archive/release/humble/${PN}/16.0.3-1.tar.gz -> ${PN}-humble-release-${PV}.tar.gz"

LICENSE="Apache-2.0"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
IUSE="test"
RDEPEND="
	ros-humble/ament_index_cpp
	ros-humble/builtin_interfaces
	ros-humble/libstatistics_collector
	ros-humble/rcl
	ros-humble/rcl_interfaces
	ros-humble/rcl_yaml_param_parser
	ros-humble/rcpputils
	ros-humble/rcutils
	ros-humble/rmw
	ros-humble/rosgraph_msgs
	ros-humble/rosidl_runtime_cpp
	ros-humble/rosidl_typesupport_c
	ros-humble/rosidl_typesupport_cpp
	ros-humble/statistics_msgs
	ros-humble/tracetools
	test? ( ros-humble/ament_cmake_gmock )
	test? ( ros-humble/ament_cmake_google_benchmark )
	test? ( ros-humble/ament_cmake_gtest )
	test? ( ros-humble/ament_lint_auto )
	test? ( ros-humble/ament_lint_common )
	test? ( ros-humble/mimick_vendor )
	test? ( ros-humble/performance_test_fixture )
	test? ( ros-humble/rmw )
	test? ( ros-humble/rmw_implementation_cmake )
	test? ( ros-humble/rosidl_default_generators )
	test? ( ros-humble/test_msgs )
"
DEPEND="${RDEPEND}
	ros-humble/ament_cmake_gen_version_h
	ros-humble/ament_cmake_ros
	dev-lang/python
"

SLOT="0"
ROS_DISTRO="humble"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
