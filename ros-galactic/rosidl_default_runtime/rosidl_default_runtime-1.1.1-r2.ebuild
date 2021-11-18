# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=7
PYTHON_COMPAT=( python{3_8,3_9,3_10} )

inherit ament-cmake

DESCRIPTION="A configuration package defining the runtime for the ROS interfaces."
HOMEPAGE="https://wiki.ros.org"
SRC_URI="https://github.com/ros2-gbp/rosidl_defaults-release/archive/release/galactic/${PN}/1.1.1-2.tar.gz -> ${PN}-galactic-release-${PV}.tar.gz"

LICENSE="Apache-2.0"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
IUSE="test"
RDEPEND="
	ros-galactic/rosidl_generator_py
	ros-galactic/rosidl_runtime_c
	ros-galactic/rosidl_runtime_cpp
	ros-galactic/rosidl_typesupport_c
	ros-galactic/rosidl_typesupport_cpp
	ros-galactic/rosidl_typesupport_introspection_c
	ros-galactic/rosidl_typesupport_introspection_cpp
	test? ( ros-galactic/ament_lint_auto )
	test? ( ros-galactic/ament_lint_common )
"
DEPEND="${RDEPEND}
	ros-galactic/ament_cmake
"

SLOT="0"
ROS_DISTRO="galactic"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
