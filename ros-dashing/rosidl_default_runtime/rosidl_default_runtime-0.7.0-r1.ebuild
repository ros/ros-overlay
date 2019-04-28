# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{3_5,3_6} )

inherit ament-cmake

DESCRIPTION="A configuration package defining the runtime for the ROS interfaces."
HOMEPAGE="https://wiki.ros.org"
SRC_URI="https://github.com/ros2-gbp/rosidl_defaults-release/archive/release/dashing/${PN}/0.7.0-1.tar.gz -> ${PN}-dashing-release-${PV}.tar.gz"

LICENSE="Apache-2.0"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
IUSE="test"
RDEPEND="
	ros-dashing/rosidl_generator_cpp
	ros-dashing/rosidl_generator_py
	ros-dashing/rosidl_typesupport_c
	ros-dashing/rosidl_typesupport_cpp
	ros-dashing/rosidl_typesupport_introspection_c
	ros-dashing/rosidl_typesupport_introspection_cpp
	test? ( ros-dashing/ament_lint_auto )
	test? ( ros-dashing/ament_lint_common )
"
DEPEND="${RDEPEND}
	ros-dashing/ament_cmake
"

SLOT="0"
ROS_DISTRO="dashing"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
