# Copyright 2020 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{3_5,3_6} )

inherit ament-cmake

DESCRIPTION="Package containing the Python client."
HOMEPAGE="https://wiki.ros.org"
SRC_URI="https://github.com/ros2-gbp/${PN}-release/archive/release/foxy/${PN}/1.0.4-1.tar.gz -> ${PN}-foxy-release-${PV}.tar.gz"

LICENSE="Apache-2.0"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
IUSE="test"
RDEPEND="
	ros-foxy/ament_index_python
	ros-foxy/builtin_interfaces
	ros-foxy/rcl
	ros-foxy/rcl_action
	ros-foxy/rcl_interfaces
	ros-foxy/rcl_yaml_param_parser
	ros-foxy/rmw_implementation
	ros-foxy/rosgraph_msgs
	ros-foxy/rpyutils
	ros-foxy/unique_identifier_msgs
	test? ( ros-foxy/ament_cmake_gtest )
	test? ( ros-foxy/ament_cmake_pytest )
	test? ( ros-foxy/ament_lint_auto )
	test? ( ros-foxy/ament_lint_common )
	test? ( ros-foxy/rosidl_generator_py )
	test? ( ros-foxy/test_msgs )
	test? ( dev-python/pytest )
"
DEPEND="${RDEPEND}
	ros-foxy/ament_cmake
	ros-foxy/python_cmake_module
	ros-foxy/rcutils
	ros-foxy/rmw_implementation_cmake
"

SLOT="0"
ROS_DISTRO="foxy"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
