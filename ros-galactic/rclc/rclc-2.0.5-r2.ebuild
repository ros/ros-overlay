# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=7
PYTHON_COMPAT=( python{3_8,3_9,3_10} )

inherit ament-cmake

DESCRIPTION="The ROS client library in C."
HOMEPAGE="https://wiki.ros.org"
SRC_URI="https://github.com/ros2-gbp/${PN}-release/archive/release/galactic/${PN}/2.0.5-2.tar.gz -> ${PN}-galactic-release-${PV}.tar.gz"

LICENSE="Apache-2.0"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
IUSE="test"
RDEPEND="
	ros-galactic/rcl
	ros-galactic/rcutils
	ros-galactic/rosidl_generator_c
	test? ( ros-galactic/ament_cmake_gtest )
	test? ( ros-galactic/ament_cmake_pytest )
	test? ( ros-galactic/ament_lint_auto )
	test? ( ros-galactic/ament_lint_common )
	test? ( ros-galactic/example_interfaces )
	test? ( ros-galactic/launch_testing )
	test? ( ros-galactic/osrf_testing_tools_cpp )
	test? ( ros-galactic/std_msgs )
	test? ( ros-galactic/test_msgs )
"
DEPEND="${RDEPEND}
	ros-galactic/ament_cmake_ros
	ros-galactic/rosidl_typesupport_c
"

SLOT="0"
ROS_DISTRO="galactic"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
