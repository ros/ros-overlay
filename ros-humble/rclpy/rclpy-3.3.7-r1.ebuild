# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{3_8,3_9,3_10} )

inherit ament-cmake

DESCRIPTION="Package containing the Python client."
HOMEPAGE="https://wiki.ros.org"
SRC_URI="https://github.com/ros2-gbp/${PN}-release/archive/release/humble/${PN}/3.3.7-1.tar.gz -> ${PN}-humble-release-${PV}.tar.gz"

LICENSE="Apache-2.0"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
IUSE="test"
RDEPEND="
	ros-humble/ament_index_python
	ros-humble/builtin_interfaces
	ros-humble/rcl
	ros-humble/rcl_action
	ros-humble/rcl_interfaces
	ros-humble/rcl_lifecycle
	ros-humble/rcl_logging_interface
	ros-humble/rcl_yaml_param_parser
	ros-humble/rmw
	ros-humble/rmw_implementation
	ros-humble/rosgraph_msgs
	ros-humble/rosidl_runtime_c
	ros-humble/rpyutils
	ros-humble/unique_identifier_msgs
	test? ( ros-humble/ament_cmake_gtest )
	test? ( ros-humble/ament_cmake_pytest )
	test? ( ros-humble/ament_lint_auto )
	test? ( ros-humble/ament_lint_common )
	test? ( ros-humble/rosidl_generator_py )
	test? ( ros-humble/test_msgs )
	test? ( dev-python/pytest )
"
DEPEND="${RDEPEND}
	ros-humble/ament_cmake
	ros-humble/pybind11_vendor
	ros-humble/python_cmake_module
	ros-humble/rcpputils
	ros-humble/rcutils
	ros-humble/rmw_implementation_cmake
"

SLOT="0"
ROS_DISTRO="humble"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
