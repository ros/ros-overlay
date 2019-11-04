# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{3_5,3_6} )

inherit ament-cmake

DESCRIPTION="Implement the ROS middleware interface using ADLINK OpenSplice static code [...]"
HOMEPAGE="https://wiki.ros.org"
SRC_URI="https://github.com/ros2-gbp/rmw_opensplice-release/archive/release/eloquent/${PN}/0.8.1-1.tar.gz -> ${PN}-eloquent-release-${PV}.tar.gz"

LICENSE="Apache-2.0"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
IUSE="test"
RDEPEND="
	ros-eloquent/rmw
	ros-eloquent/rosidl_generator_c
	ros-eloquent/rosidl_generator_cpp
	ros-eloquent/rosidl_typesupport_opensplice_c
	ros-eloquent/rosidl_typesupport_opensplice_cpp
	test? ( ros-eloquent/ament_lint_auto )
	test? ( ros-eloquent/ament_lint_common )
	=sci-libs/opensplice-6.9.*
"
DEPEND="${RDEPEND}
	ros-eloquent/ament_cmake
	ros-eloquent/opensplice_cmake_module
	ros-eloquent/rcpputils
	ros-eloquent/rcutils
	ros-eloquent/rosidl_cmake
	ros-eloquent/rosidl_generator_dds_idl
"

SLOT="0"
ROS_DISTRO="eloquent"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
