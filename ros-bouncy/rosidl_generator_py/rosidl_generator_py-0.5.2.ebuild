# Copyright 2018 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{3_5,3_6} )

inherit ament-cmake

DESCRIPTION="Generate the ROS interfaces in Python."
HOMEPAGE="https://wiki.ros.org"
SRC_URI="https://github.com/ros2-gbp/rosidl_python-release/archive/release/bouncy/${PN}/0.5.2-0.tar.gz -> ${PN}-bouncy-release-${PV}.tar.gz"

LICENSE="Apache-2.0"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
IUSE="test"
RDEPEND="
	ros-bouncy/rmw
	ros-bouncy/rmw_implementation
	ros-bouncy/rmw_implementation_cmake
	ros-bouncy/rosidl_generator_c
	ros-bouncy/rosidl_parser
	test? ( ros-bouncy/ament_cmake_pytest )
	test? ( ros-bouncy/ament_index_python )
	test? ( ros-bouncy/ament_lint_auto )
	test? ( ros-bouncy/ament_lint_common )
	test? ( ros-bouncy/python_cmake_module )
	test? ( ros-bouncy/rmw )
	test? ( ros-bouncy/rmw_implementation )
	test? ( ros-bouncy/rmw_implementation_cmake )
	test? ( ros-bouncy/rosidl_cmake )
	test? ( ros-bouncy/rosidl_generator_c )
	test? ( ros-bouncy/rosidl_parser )
	test? ( ros-bouncy/rosidl_typesupport_c )
	test? ( dev-python/pytest )
"
DEPEND="${RDEPEND}
	ros-bouncy/ament_cmake
"

SLOT="0"
ROS_DISTRO="bouncy"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
