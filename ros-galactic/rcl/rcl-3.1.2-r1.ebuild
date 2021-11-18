# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=7
PYTHON_COMPAT=( python{3_8,3_9,3_10} )

inherit ament-cmake

DESCRIPTION="The ROS client library common implementation.\
	This package contains an[...]"
HOMEPAGE="https://wiki.ros.org"
SRC_URI="https://github.com/ros2-gbp/${PN}-release/archive/release/galactic/${PN}/3.1.2-1.tar.gz -> ${PN}-galactic-release-${PV}.tar.gz"

LICENSE="Apache-2.0"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
IUSE="test"
RDEPEND="
	ros-galactic/rcl_interfaces
	ros-galactic/rcl_logging_interface
	ros-galactic/rcl_logging_spdlog
	ros-galactic/rcl_yaml_param_parser
	ros-galactic/rcutils
	ros-galactic/rmw
	ros-galactic/rmw_implementation
	ros-galactic/rosidl_runtime_c
	ros-galactic/tracetools
	test? ( ros-galactic/ament_cmake_gtest )
	test? ( ros-galactic/ament_lint_auto )
	test? ( ros-galactic/ament_lint_common )
	test? ( ros-galactic/launch )
	test? ( ros-galactic/launch_testing )
	test? ( ros-galactic/launch_testing_ament_cmake )
	test? ( ros-galactic/mimick_vendor )
	test? ( ros-galactic/osrf_testing_tools_cpp )
	test? ( ros-galactic/rcpputils )
	test? ( ros-galactic/rmw )
	test? ( ros-galactic/rmw_implementation_cmake )
	test? ( ros-galactic/test_msgs )
"
DEPEND="${RDEPEND}
	ros-galactic/ament_cmake_ros
"

SLOT="0"
ROS_DISTRO="galactic"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
