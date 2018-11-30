# Copyright 2018 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{3_5,3_6} )

inherit ament-cmake

DESCRIPTION="Generate the ROS interfaces in Python."
HOMEPAGE="https://wiki.ros.org"
SRC_URI="https://github.com/ros2-gbp/rosidl_python-release/archive/release/crystal/${PN}/0.6.0-0.tar.gz -> ${PN}-crystal-release-${PV}.tar.gz"

LICENSE="Apache-2.0"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
IUSE="test"
RDEPEND="
	ros-crystal/rmw
	ros-crystal/rmw_implementation
	ros-crystal/rmw_implementation_cmake
	ros-crystal/rosidl_generator_c
	ros-crystal/rosidl_parser
	test? ( ros-crystal/ament_cmake_pytest )
	test? ( ros-crystal/ament_index_python )
	test? ( ros-crystal/ament_lint_auto )
	test? ( ros-crystal/ament_lint_common )
	test? ( ros-crystal/python_cmake_module )
	test? ( ros-crystal/rmw )
	test? ( ros-crystal/rmw_implementation )
	test? ( ros-crystal/rmw_implementation_cmake )
	test? ( ros-crystal/rosidl_cmake )
	test? ( ros-crystal/rosidl_generator_c )
	test? ( ros-crystal/rosidl_parser )
	test? ( ros-crystal/rosidl_typesupport_c )
	test? ( dev-python/pytest )
"
DEPEND="${RDEPEND}
	ros-crystal/ament_cmake
"

SLOT="0"
ROS_DISTRO="crystal"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
