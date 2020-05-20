# Copyright 2020 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{3_5,3_6} )

inherit ament-cmake

DESCRIPTION="The ROS client library in C."
HOMEPAGE="https://wiki.ros.org"
SRC_URI="https://github.com/micro-ROS/${PN}-release/archive/release/dashing/${PN}/0.1.2-2.tar.gz -> ${PN}-dashing-release-${PV}.tar.gz"

LICENSE="Apache-2.0"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
IUSE="test"
RDEPEND="
	ros-dashing/rcl
	ros-dashing/rcutils
	ros-dashing/rosidl_generator_c
	test? ( ros-dashing/ament_cmake_gtest )
	test? ( ros-dashing/ament_cmake_pytest )
	test? ( ros-dashing/ament_lint_auto )
	test? ( ros-dashing/ament_lint_common )
	test? ( ros-dashing/launch_testing )
	test? ( ros-dashing/osrf_testing_tools_cpp )
	test? ( ros-dashing/std_msgs )
"
DEPEND="${RDEPEND}
	ros-dashing/ament_cmake_ros
	ros-dashing/rosidl_typesupport_c
"

SLOT="0"
ROS_DISTRO="dashing"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
