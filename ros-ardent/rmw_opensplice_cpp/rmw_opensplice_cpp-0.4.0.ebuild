# Copyright 2018 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{3_5,3_6} )

inherit ament-cmake

DESCRIPTION="Implement the ROS middleware interface using PrismTech OpenSplice static co[...]"
HOMEPAGE="https://wiki.ros.org"
SRC_URI="https://github.com/ros2-gbp/rmw_opensplice-release/archive/release/ardent/${PN}/0.4.0-0.tar.gz -> ${PN}-ardent-release-${PV}.tar.gz"

LICENSE="Apache-2.0"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
IUSE="test"
RDEPEND="
	ros-ardent/rmw
	ros-ardent/rosidl_generator_c
	ros-ardent/rosidl_generator_cpp
	ros-ardent/rosidl_typesupport_opensplice_c
	ros-ardent/rosidl_typesupport_opensplice_cpp
	test? ( ros-ardent/ament_lint_auto )
	test? ( ros-ardent/ament_lint_common )
	s
	c
	i
	-
	l
	i
	b
	s
	/
	o
	p
	e
	n
	s
	p
	l
	i
	c
	e
"
DEPEND="${RDEPEND}
	ros-ardent/ament_cmake
	ros-ardent/opensplice_cmake_module
	ros-ardent/rcutils
	ros-ardent/rosidl_cmake
	ros-ardent/rosidl_generator_dds_idl
"

SLOT="0"
ROS_DISTRO="ardent"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
