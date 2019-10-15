# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{3_5,3_6} )

inherit ament-cmake

DESCRIPTION="Generate the ROS interfaces in Python."
HOMEPAGE="https://wiki.ros.org"
SRC_URI="https://github.com/ros2-gbp/rosidl_python-release/archive/release/dashing/${PN}/0.7.9-1.tar.gz -> ${PN}-dashing-release-${PV}.tar.gz"

LICENSE="Apache-2.0"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
IUSE="test"
RDEPEND="
	ros-dashing/rmw
	ros-dashing/rmw_implementation
	ros-dashing/rmw_implementation_cmake
	ros-dashing/rosidl_generator_c
	ros-dashing/rosidl_parser
	test? ( ros-dashing/ament_cmake_pytest )
	test? ( ros-dashing/ament_index_python )
	test? ( ros-dashing/ament_lint_auto )
	test? ( ros-dashing/ament_lint_common )
	test? ( ros-dashing/python_cmake_module )
	test? ( ros-dashing/rmw )
	test? ( ros-dashing/rmw_implementation )
	test? ( ros-dashing/rmw_implementation_cmake )
	test? ( ros-dashing/rosidl_cmake )
	test? ( ros-dashing/rosidl_generator_c )
	test? ( ros-dashing/rosidl_parser )
	test? ( ros-dashing/rosidl_typesupport_c )
	dev-python/numpy
	test? ( dev-python/numpy )
	test? ( dev-python/pytest )
"
DEPEND="${RDEPEND}
	ros-dashing/ament_cmake
"

SLOT="0"
ROS_DISTRO="dashing"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
