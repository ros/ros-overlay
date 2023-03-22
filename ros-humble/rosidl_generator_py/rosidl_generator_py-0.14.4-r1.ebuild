# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{3_8,3_9,3_10} )

inherit ament-cmake

DESCRIPTION="Generate the ROS interfaces in Python."
HOMEPAGE="https://wiki.ros.org"
SRC_URI="https://github.com/ros2-gbp/rosidl_python-release/archive/release/humble/${PN}/0.14.4-1.tar.gz -> ${PN}-humble-release-${PV}.tar.gz"

LICENSE="Apache-2.0"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
IUSE="test"
RDEPEND="
	ros-humble/ament_index_python
	ros-humble/rmw
	ros-humble/rosidl_cli
	ros-humble/rosidl_generator_c
	ros-humble/rosidl_parser
	ros-humble/rosidl_runtime_c
	ros-humble/rpyutils
	test? ( ros-humble/ament_cmake_pytest )
	test? ( ros-humble/ament_index_python )
	test? ( ros-humble/ament_lint_auto )
	test? ( ros-humble/ament_lint_common )
	test? ( ros-humble/python_cmake_module )
	test? ( ros-humble/rmw )
	test? ( ros-humble/rosidl_cmake )
	test? ( ros-humble/rosidl_generator_c )
	test? ( ros-humble/rosidl_generator_cpp )
	test? ( ros-humble/rosidl_parser )
	test? ( ros-humble/rosidl_typesupport_c )
	test? ( ros-humble/rosidl_typesupport_fastrtps_c )
	test? ( ros-humble/rosidl_typesupport_introspection_c )
	test? ( ros-humble/rpyutils )
	test? ( ros-humble/test_interface_files )
	dev-python/numpy
	test? ( dev-python/numpy )
	test? ( dev-python/pytest )
"
DEPEND="${RDEPEND}
	ros-humble/ament_cmake
"

SLOT="0"
ROS_DISTRO="humble"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
