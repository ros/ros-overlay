# Copyright 2018 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{3_5,3_6} )

inherit ament-cmake

DESCRIPTION="The ROS client library in C++."
HOMEPAGE="https://wiki.ros.org"
SRC_URI="https://github.com/ros2-gbp/${PN}-release/archive/release/bouncy/${PN}/0.5.1-0.tar.gz -> ${PN}-bouncy-release-${PV}.tar.gz"

LICENSE="Apache-2.0"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
IUSE="test"
RDEPEND="
	ros-bouncy/ament_cmake
	ros-bouncy/builtin_interfaces
	ros-bouncy/rcl
	ros-bouncy/rcl_interfaces
	ros-bouncy/rcl_yaml_param_parser
	ros-bouncy/rmw
	ros-bouncy/rmw_implementation
	ros-bouncy/rosgraph_msgs
	ros-bouncy/rosidl_generator_cpp
	ros-bouncy/rosidl_typesupport_c
	ros-bouncy/rosidl_typesupport_cpp
	test? ( ros-bouncy/ament_cmake_gmock )
	test? ( ros-bouncy/ament_cmake_gtest )
	test? ( ros-bouncy/ament_lint_auto )
	test? ( ros-bouncy/ament_lint_common )
	test? ( ros-bouncy/rmw )
	test? ( ros-bouncy/rmw_implementation_cmake )
	test? ( ros-bouncy/test_msgs )
"
DEPEND="${RDEPEND}
	ros-bouncy/ament_cmake_ros
"

SLOT="0"
ROS_DISTRO="bouncy"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
