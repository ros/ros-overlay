# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=8
PYTHON_COMPAT=( python{3_8,3_9,3_10,3_11} )

inherit ament-cmake

DESCRIPTION="Generate the C interfaces for eProsima FastRTPS."
HOMEPAGE="https://wiki.ros.org"
SRC_URI="https://github.com/ros2-gbp/rosidl_typesupport_fastrtps-release/archive/release/humble/${PN}/2.2.0-2.tar.gz -> ${PN}-humble-release-${PV}.tar.gz"

LICENSE="Apache-2.0"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
IUSE="test"
RDEPEND="
	ros-humble/ament_index_python
	ros-humble/fastcdr
	ros-humble/rmw
	ros-humble/rosidl_cli
	ros-humble/rosidl_cmake
	ros-humble/rosidl_runtime_c
	ros-humble/rosidl_runtime_cpp
	ros-humble/rosidl_typesupport_fastrtps_cpp
	ros-humble/rosidl_typesupport_interface
	test? ( ros-humble/ament_cmake_gtest )
	test? ( ros-humble/ament_cmake_pytest )
	test? ( ros-humble/ament_lint_auto )
	test? ( ros-humble/ament_lint_common )
	test? ( ros-humble/osrf_testing_tools_cpp )
	test? ( ros-humble/performance_test_fixture )
"
DEPEND="${RDEPEND}
	ros-humble/ament_cmake_python
	ros-humble/ament_cmake_ros
"

SLOT="0"
ROS_DISTRO="humble"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
