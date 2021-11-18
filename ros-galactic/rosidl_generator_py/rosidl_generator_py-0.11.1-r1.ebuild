# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=7
PYTHON_COMPAT=( python{3_8,3_9,3_10} )

inherit ament-cmake

DESCRIPTION="Generate the ROS interfaces in Python."
HOMEPAGE="https://wiki.ros.org"
SRC_URI="https://github.com/ros2-gbp/rosidl_python-release/archive/release/galactic/${PN}/0.11.1-1.tar.gz -> ${PN}-galactic-release-${PV}.tar.gz"

LICENSE="Apache-2.0"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
IUSE="test"
RDEPEND="
	ros-galactic/ament_index_python
	ros-galactic/rmw
	ros-galactic/rosidl_cli
	ros-galactic/rosidl_generator_c
	ros-galactic/rosidl_parser
	ros-galactic/rosidl_runtime_c
	ros-galactic/rpyutils
	test? ( ros-galactic/ament_cmake_pytest )
	test? ( ros-galactic/ament_index_python )
	test? ( ros-galactic/ament_lint_auto )
	test? ( ros-galactic/ament_lint_common )
	test? ( ros-galactic/python_cmake_module )
	test? ( ros-galactic/rmw )
	test? ( ros-galactic/rosidl_cmake )
	test? ( ros-galactic/rosidl_generator_c )
	test? ( ros-galactic/rosidl_generator_cpp )
	test? ( ros-galactic/rosidl_parser )
	test? ( ros-galactic/rosidl_typesupport_c )
	test? ( ros-galactic/rosidl_typesupport_fastrtps_c )
	test? ( ros-galactic/rosidl_typesupport_introspection_c )
	test? ( ros-galactic/rpyutils )
	test? ( ros-galactic/test_interface_files )
	dev-python/numpy
	test? ( dev-python/numpy )
	test? ( dev-python/pytest )
"
DEPEND="${RDEPEND}
	ros-galactic/ament_cmake
"

SLOT="0"
ROS_DISTRO="galactic"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
