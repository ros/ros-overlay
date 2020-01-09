# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{3_5,3_6} )

inherit ament-cmake

DESCRIPTION="Generate the C interfaces for eProsima FastRTPS."
HOMEPAGE="https://wiki.ros.org"
SRC_URI="https://github.com/ros2-gbp/rosidl_typesupport_fastrtps-release/archive/release/eloquent/${PN}/0.8.0-1.tar.gz -> ${PN}-eloquent-release-${PV}.tar.gz"

LICENSE="Apache-2.0"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
IUSE="test"
RDEPEND="
	ros-eloquent/rmw
	ros-eloquent/rosidl_parser
	ros-eloquent/rosidl_typesupport_interface
	test? ( ros-eloquent/ament_lint_auto )
	test? ( ros-eloquent/ament_lint_common )
"
DEPEND="${RDEPEND}
	ros-eloquent/ament_cmake
	ros-eloquent/fastcdr
	ros-eloquent/fastrtps
	ros-eloquent/fastrtps_cmake_module
	ros-eloquent/rosidl_cmake
	ros-eloquent/rosidl_generator_c
	ros-eloquent/rosidl_typesupport_fastrtps_cpp
"

SLOT="0"
ROS_DISTRO="eloquent"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"