# Copyright 2020 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{3_5,3_6} )

inherit ament-cmake

DESCRIPTION="The ROS client library common implementation.\
	This package contains an[...]"
HOMEPAGE="https://wiki.ros.org"
SRC_URI="https://github.com/ros2-gbp/${PN}-release/archive/release/foxy/${PN}/1.1.6-1.tar.gz -> ${PN}-foxy-release-${PV}.tar.gz"

LICENSE="Apache-2.0"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
IUSE="test"
RDEPEND="
	ros-foxy/rcl_interfaces
	ros-foxy/rcl_logging_spdlog
	ros-foxy/rcl_yaml_param_parser
	ros-foxy/rcutils
	ros-foxy/rmw
	ros-foxy/rmw_implementation
	ros-foxy/rosidl_runtime_c
	ros-foxy/tracetools
	test? ( ros-foxy/ament_cmake_gtest )
	test? ( ros-foxy/ament_cmake_pytest )
	test? ( ros-foxy/ament_lint_auto )
	test? ( ros-foxy/ament_lint_common )
	test? ( ros-foxy/launch )
	test? ( ros-foxy/launch_testing )
	test? ( ros-foxy/launch_testing_ament_cmake )
	test? ( ros-foxy/osrf_testing_tools_cpp )
	test? ( ros-foxy/rcpputils )
	test? ( ros-foxy/rmw )
	test? ( ros-foxy/rmw_implementation_cmake )
	test? ( ros-foxy/test_msgs )
"
DEPEND="${RDEPEND}
	ros-foxy/ament_cmake_ros
"

SLOT="0"
ROS_DISTRO="foxy"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
