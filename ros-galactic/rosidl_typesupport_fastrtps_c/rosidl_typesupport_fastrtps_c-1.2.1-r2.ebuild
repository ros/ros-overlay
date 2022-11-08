# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{3_5,3_6} )

inherit ament-cmake

DESCRIPTION="Generate the C interfaces for eProsima FastRTPS."
HOMEPAGE="https://wiki.ros.org"
SRC_URI="https://github.com/ros2-gbp/rosidl_typesupport_fastrtps-release/archive/release/galactic/${PN}/1.2.1-2.tar.gz -> ${PN}-galactic-release-${PV}.tar.gz"

LICENSE="Apache-2.0"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
IUSE="test"
RDEPEND="
	ros-galactic/ament_index_python
	ros-galactic/rmw
	ros-galactic/rosidl_cli
	ros-galactic/rosidl_runtime_c
	ros-galactic/rosidl_typesupport_interface
	test? ( ros-galactic/ament_cmake_gtest )
	test? ( ros-galactic/ament_lint_auto )
	test? ( ros-galactic/ament_lint_common )
	test? ( ros-galactic/osrf_testing_tools_cpp )
	test? ( ros-galactic/performance_test_fixture )
"
DEPEND="${RDEPEND}
	ros-galactic/ament_cmake_ros
	ros-galactic/fastcdr
	ros-galactic/fastrtps
	ros-galactic/fastrtps_cmake_module
	ros-galactic/rosidl_cmake
	ros-galactic/rosidl_typesupport_fastrtps_cpp
"

SLOT="0"
ROS_DISTRO="galactic"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
