# Copyright 2020 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{3_5,3_6} )

inherit ament-cmake

DESCRIPTION="Generate the ROS interfaces in Python."
HOMEPAGE="https://wiki.ros.org"
SRC_URI="https://github.com/ros2-gbp/rosidl_python-release/archive/release/foxy/${PN}/0.9.3-1.tar.gz -> ${PN}-foxy-release-${PV}.tar.gz"

LICENSE="Apache-2.0"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
IUSE="test"
RDEPEND="
	ros-foxy/rmw
	ros-foxy/rosidl_generator_c
	ros-foxy/rosidl_parser
	ros-foxy/rosidl_runtime_c
	ros-foxy/rpyutils
	test? ( ros-foxy/ament_cmake_pytest )
	test? ( ros-foxy/ament_index_python )
	test? ( ros-foxy/ament_lint_auto )
	test? ( ros-foxy/ament_lint_common )
	test? ( ros-foxy/python_cmake_module )
	test? ( ros-foxy/rmw )
	test? ( ros-foxy/rosidl_cmake )
	test? ( ros-foxy/rosidl_generator_c )
	test? ( ros-foxy/rosidl_generator_cpp )
	test? ( ros-foxy/rosidl_parser )
	test? ( ros-foxy/rosidl_typesupport_c )
	test? ( ros-foxy/rosidl_typesupport_connext_c )
	test? ( ros-foxy/rosidl_typesupport_fastrtps_c )
	test? ( ros-foxy/rosidl_typesupport_introspection_c )
	test? ( ros-foxy/rpyutils )
	test? ( ros-foxy/test_interface_files )
	dev-python/numpy
	test? ( dev-python/numpy )
	test? ( dev-python/pytest )
"
DEPEND="${RDEPEND}
	ros-foxy/ament_cmake
"

SLOT="0"
ROS_DISTRO="foxy"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
