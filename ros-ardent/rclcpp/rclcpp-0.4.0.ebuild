# Copyright 2018 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{2_7,3_5} )

inherit ros-cmake

DESCRIPTION="The ROS client library in C++."
HOMEPAGE="https://wiki.ros.org"
SRC_URI="https://github.com/ros2-gbp/${PN}-release/archive/release/ardent/${PN}/0.4.0-0.tar.gz -> ${PN}-ardent-release-${PV}.tar.gz"

LICENSE="Apache-2.0"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
IUSE="test"
RDEPEND="
	ros-ardent/ament_cmake
	ros-ardent/builtin_interfaces
	ros-ardent/rcl
	ros-ardent/rcl_interfaces
	ros-ardent/rmw
	ros-ardent/rmw_implementation
	ros-ardent/rosidl_generator_cpp
	ros-ardent/rosidl_typesupport_c
	ros-ardent/rosidl_typesupport_cpp
	test? ( ros-ardent/ament_cmake_gmock )
	test? ( ros-ardent/ament_cmake_gtest )
	test? ( ros-ardent/ament_lint_auto )
	test? ( ros-ardent/ament_lint_common )
	test? ( ros-ardent/rmw )
	test? ( ros-ardent/rmw_implementation_cmake )
"
DEPEND="${RDEPEND}
"

SLOT="0"
ROS_DISTRO="ardent"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
