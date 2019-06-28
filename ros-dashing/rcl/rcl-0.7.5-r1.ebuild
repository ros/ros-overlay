# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{3_5,3_6} )

inherit ament-cmake

DESCRIPTION="The ROS client library common implementation.\
	This package contains an[...]"
HOMEPAGE="https://wiki.ros.org"
SRC_URI="https://github.com/ros2-gbp/${PN}-release/archive/release/dashing/${PN}/0.7.5-1.tar.gz -> ${PN}-dashing-release-${PV}.tar.gz"

LICENSE="Apache-2.0"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
IUSE="test"
RDEPEND="
	ros-dashing/ament_cmake
	ros-dashing/rcl_interfaces
	ros-dashing/rcl_logging_noop
	ros-dashing/rcutils
	ros-dashing/rmw
	ros-dashing/rmw_implementation
	ros-dashing/rosidl_default_runtime
	ros-dashing/rosidl_generator_c
	ros-dashing/tinydir_vendor
	test? ( ros-dashing/ament_cmake_gtest )
	test? ( ros-dashing/ament_cmake_pytest )
	test? ( ros-dashing/ament_lint_auto )
	test? ( ros-dashing/ament_lint_common )
	test? ( ros-dashing/launch )
	test? ( ros-dashing/launch_testing )
	test? ( ros-dashing/launch_testing_ament_cmake )
	test? ( ros-dashing/osrf_testing_tools_cpp )
	test? ( ros-dashing/rmw )
	test? ( ros-dashing/rmw_implementation_cmake )
	test? ( ros-dashing/test_msgs )
"
DEPEND="${RDEPEND}
	ros-dashing/ament_cmake_ros
"

SLOT="0"
ROS_DISTRO="dashing"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
