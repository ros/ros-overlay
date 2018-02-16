# Copyright 2018 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{3_5,3_6} )

inherit ament-cmake

DESCRIPTION="Generate the ROS interfaces in Python."
HOMEPAGE="https://wiki.ros.org"
SRC_URI="https://github.com/ros2-gbp/rosidl-release/archive/release/ardent/${PN}/0.4.1-0.tar.gz -> ${PN}-ardent-release-${PV}.tar.gz"

LICENSE="Apache-2.0"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
IUSE="test"
RDEPEND="
	ros-ardent/rmw_implementation
	ros-ardent/rmw_implementation_cmake
	ros-ardent/rosidl_generator_c
	ros-ardent/rosidl_parser
	test? ( ros-ardent/ament_cmake_pytest )
	test? ( ros-ardent/ament_index_python )
	test? ( ros-ardent/ament_lint_auto )
	test? ( ros-ardent/ament_lint_common )
	test? ( ros-ardent/python_cmake_module )
	test? ( ros-ardent/rmw_implementation )
	test? ( ros-ardent/rmw_implementation_cmake )
	test? ( ros-ardent/rosidl_cmake )
	test? ( ros-ardent/rosidl_generator_c )
	test? ( ros-ardent/rosidl_parser )
	test? ( ros-ardent/rosidl_typesupport_c )
"
DEPEND="${RDEPEND}
	ros-ardent/ament_cmake
"

SLOT="0"
ROS_DISTRO="ardent"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
