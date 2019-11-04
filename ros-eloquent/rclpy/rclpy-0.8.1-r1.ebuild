# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{3_5,3_6} )

inherit ament-cmake

DESCRIPTION="Package containing the Python client."
HOMEPAGE="https://wiki.ros.org"
SRC_URI="https://github.com/ros2-gbp/${PN}-release/archive/release/eloquent/${PN}/0.8.1-1.tar.gz -> ${PN}-eloquent-release-${PV}.tar.gz"

LICENSE="Apache-2.0"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
IUSE="test"
RDEPEND="
	ros-eloquent/ament_index_python
	ros-eloquent/builtin_interfaces
	ros-eloquent/rcl
	ros-eloquent/rcl_action
	ros-eloquent/rcl_yaml_param_parser
	ros-eloquent/rmw_implementation
	ros-eloquent/rosgraph_msgs
	ros-eloquent/unique_identifier_msgs
	test? ( ros-eloquent/ament_cmake_pytest )
	test? ( ros-eloquent/ament_lint_auto )
	test? ( ros-eloquent/ament_lint_common )
	test? ( ros-eloquent/rcl_interfaces )
	test? ( ros-eloquent/rosidl_generator_py )
	test? ( ros-eloquent/test_msgs )
	test? ( dev-python/pytest )
"
DEPEND="${RDEPEND}
	ros-eloquent/ament_cmake
	ros-eloquent/python_cmake_module
	ros-eloquent/rcutils
	ros-eloquent/rmw_implementation_cmake
"

SLOT="0"
ROS_DISTRO="eloquent"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
