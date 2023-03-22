# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{3_8,3_9,3_10} )

inherit ament-cmake

DESCRIPTION="A configuration package defining the runtime for the ROS interfaces."
HOMEPAGE="https://wiki.ros.org"
SRC_URI="https://github.com/ros2-gbp/rosidl_defaults-release/archive/release/humble/${PN}/1.2.0-2.tar.gz -> ${PN}-humble-release-${PV}.tar.gz"

LICENSE="Apache-2.0"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
IUSE="test"
RDEPEND="
	ros-humble/rosidl_generator_py
	ros-humble/rosidl_runtime_c
	ros-humble/rosidl_runtime_cpp
	ros-humble/rosidl_typesupport_c
	ros-humble/rosidl_typesupport_cpp
	ros-humble/rosidl_typesupport_fastrtps_c
	ros-humble/rosidl_typesupport_fastrtps_cpp
	ros-humble/rosidl_typesupport_introspection_c
	ros-humble/rosidl_typesupport_introspection_cpp
	test? ( ros-humble/ament_lint_auto )
	test? ( ros-humble/ament_lint_common )
"
DEPEND="${RDEPEND}
	ros-humble/ament_cmake
"

SLOT="0"
ROS_DISTRO="humble"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
