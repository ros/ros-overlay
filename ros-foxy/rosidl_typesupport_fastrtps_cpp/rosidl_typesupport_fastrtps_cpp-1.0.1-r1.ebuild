# Copyright 2020 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{3_5,3_6} )

inherit ament-cmake

DESCRIPTION="Generate the C++ interfaces for eProsima FastRTPS."
HOMEPAGE="https://wiki.ros.org"
SRC_URI="https://github.com/ros2-gbp/rosidl_typesupport_fastrtps-release/archive/release/foxy/${PN}/1.0.1-1.tar.gz -> ${PN}-foxy-release-${PV}.tar.gz"

LICENSE="Apache-2.0"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
IUSE="test"
RDEPEND="
	ros-foxy/rmw
	ros-foxy/rosidl_parser
	ros-foxy/rosidl_typesupport_interface
	test? ( ros-foxy/ament_cmake_gtest )
	test? ( ros-foxy/ament_lint_auto )
	test? ( ros-foxy/ament_lint_common )
	test? ( ros-foxy/osrf_testing_tools_cpp )
"
DEPEND="${RDEPEND}
	ros-foxy/ament_cmake
	ros-foxy/fastcdr
	ros-foxy/fastrtps
	ros-foxy/fastrtps_cmake_module
	ros-foxy/rosidl_cmake
	ros-foxy/rosidl_runtime_c
	ros-foxy/rosidl_runtime_cpp
"

SLOT="0"
ROS_DISTRO="foxy"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
