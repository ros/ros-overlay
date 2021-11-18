# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=7
PYTHON_COMPAT=( python{3_8,3_9,3_10} )

inherit ament-cmake

DESCRIPTION="Package containing the Python client."
HOMEPAGE="https://wiki.ros.org"
SRC_URI="https://github.com/ros2-gbp/${PN}-release/archive/release/galactic/${PN}/1.9.0-1.tar.gz -> ${PN}-galactic-release-${PV}.tar.gz"

LICENSE="Apache-2.0"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
IUSE="test"
RDEPEND="
	ros-galactic/ament_index_python
	ros-galactic/builtin_interfaces
	ros-galactic/rcl
	ros-galactic/rcl_action
	ros-galactic/rcl_interfaces
	ros-galactic/rcl_logging_interface
	ros-galactic/rcl_yaml_param_parser
	ros-galactic/rmw_implementation
	ros-galactic/rosgraph_msgs
	ros-galactic/rpyutils
	ros-galactic/unique_identifier_msgs
	test? ( ros-galactic/ament_cmake_gtest )
	test? ( ros-galactic/ament_cmake_pytest )
	test? ( ros-galactic/ament_lint_auto )
	test? ( ros-galactic/ament_lint_common )
	test? ( ros-galactic/rosidl_generator_py )
	test? ( ros-galactic/test_msgs )
	test? ( dev-python/pytest )
"
DEPEND="${RDEPEND}
	ros-galactic/ament_cmake
	ros-galactic/pybind11_vendor
	ros-galactic/python_cmake_module
	ros-galactic/rcpputils
	ros-galactic/rcutils
	ros-galactic/rmw_implementation_cmake
"

SLOT="0"
ROS_DISTRO="galactic"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
