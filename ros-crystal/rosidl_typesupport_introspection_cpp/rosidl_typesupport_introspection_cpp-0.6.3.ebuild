# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{3_5,3_6} )

inherit ament-cmake

DESCRIPTION="Generate the message type support for dynamic message construction in C++."
HOMEPAGE="https://wiki.ros.org"
SRC_URI="https://github.com/ros2-gbp/rosidl-release/archive/release/crystal/${PN}/0.6.3-0.tar.gz -> ${PN}-crystal-release-${PV}.tar.gz"

LICENSE="Apache-2.0"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
IUSE="test"
RDEPEND="
	ros-crystal/rosidl_cmake
	ros-crystal/rosidl_generator_c
	ros-crystal/rosidl_generator_cpp
	ros-crystal/rosidl_parser
	ros-crystal/rosidl_typesupport_interface
	ros-crystal/rosidl_typesupport_introspection_c
	test? ( ros-crystal/ament_lint_auto )
	test? ( ros-crystal/ament_lint_common )
"
DEPEND="${RDEPEND}
	ros-crystal/ament_cmake_ros
"

SLOT="0"
ROS_DISTRO="crystal"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
