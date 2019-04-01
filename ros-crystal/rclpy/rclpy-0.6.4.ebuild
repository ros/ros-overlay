# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{3_5,3_6} )

inherit ament-cmake

DESCRIPTION="Package containing the Python client."
HOMEPAGE="https://wiki.ros.org"
SRC_URI="https://github.com/ros2-gbp/${PN}-release/archive/release/crystal/${PN}/0.6.4-0.tar.gz -> ${PN}-crystal-release-${PV}.tar.gz"

LICENSE="Apache-2.0"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
IUSE="test"
RDEPEND="
	ros-crystal/ament_index_python
	ros-crystal/builtin_interfaces
	ros-crystal/rcl
	ros-crystal/rcl_action
	ros-crystal/rcl_yaml_param_parser
	ros-crystal/rmw_implementation
	ros-crystal/unique_identifier_msgs
	test? ( ros-crystal/ament_cmake_pytest )
	test? ( ros-crystal/ament_lint_auto )
	test? ( ros-crystal/ament_lint_common )
	test? ( ros-crystal/rcl_interfaces )
	test? ( ros-crystal/rosidl_generator_py )
	test? ( ros-crystal/test_msgs )
	test? ( dev-python/pytest )
"
DEPEND="${RDEPEND}
	ros-crystal/ament_cmake
	ros-crystal/python_cmake_module
	ros-crystal/rcutils
	ros-crystal/rmw_implementation_cmake
"

SLOT="0"
ROS_DISTRO="crystal"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
