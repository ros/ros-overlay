# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{3_5,3_6} )

inherit ament-cmake

DESCRIPTION="The ROS client library common implementation.\
	This package contains an[...]"
HOMEPAGE="https://wiki.ros.org"
SRC_URI="https://github.com/ros2-gbp/${PN}-release/archive/release/eloquent/${PN}/0.8.2-1.tar.gz -> ${PN}-eloquent-release-${PV}.tar.gz"

LICENSE="Apache-2.0"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
IUSE="test"
RDEPEND="
	ros-eloquent/rcl_interfaces
	ros-eloquent/rcl_logging_spdlog
	ros-eloquent/rcl_yaml_param_parser
	ros-eloquent/rcutils
	ros-eloquent/rmw
	ros-eloquent/rmw_implementation
	ros-eloquent/rosidl_generator_c
	ros-eloquent/tinydir_vendor
	ros-eloquent/tracetools
	test? ( ros-eloquent/ament_cmake_gtest )
	test? ( ros-eloquent/ament_cmake_pytest )
	test? ( ros-eloquent/ament_lint_auto )
	test? ( ros-eloquent/ament_lint_common )
	test? ( ros-eloquent/launch )
	test? ( ros-eloquent/launch_testing )
	test? ( ros-eloquent/launch_testing_ament_cmake )
	test? ( ros-eloquent/osrf_testing_tools_cpp )
	test? ( ros-eloquent/rcpputils )
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
