# Copyright 2018 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{3_5,3_6} )

inherit ament-cmake

DESCRIPTION="A configuration package defining the runtime for the ROS interfaces."
HOMEPAGE="https://wiki.ros.org"
SRC_URI="https://github.com/ros2-gbp/rosidl_defaults-release/archive/release/crystal/${PN}/0.6.0-0.tar.gz -> ${PN}-crystal-release-${PV}.tar.gz"

LICENSE="Apache-2.0"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
IUSE="test"
RDEPEND="
	ros-crystal/rosidl_generator_cpp
	ros-crystal/rosidl_generator_py
	ros-crystal/rosidl_typesupport_c
	ros-crystal/rosidl_typesupport_cpp
	ros-crystal/rosidl_typesupport_introspection_c
	ros-crystal/rosidl_typesupport_introspection_cpp
	test? ( ros-crystal/ament_lint_auto )
	test? ( ros-crystal/ament_lint_common )
"
DEPEND="${RDEPEND}
	ros-crystal/ament_cmake
"

SLOT="0"
ROS_DISTRO="crystal"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
