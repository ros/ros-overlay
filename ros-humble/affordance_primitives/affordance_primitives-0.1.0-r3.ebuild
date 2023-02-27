# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{3_5,3_6} )

inherit ament-cmake

DESCRIPTION="Library for affordance motion primitives."
HOMEPAGE="https://wiki.ros.org"
SRC_URI="https://github.com/PickNikRobotics/${PN}-release/archive/release/humble/${PN}/0.1.0-3.tar.gz -> ${PN}-humble-release-${PV}.tar.gz"

LICENSE="BSD"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
IUSE="test"
RDEPEND="
	ros-humble/geometry_msgs
	ros-humble/tf2_eigen
	test? ( ros-humble/ament_clang_format )
	test? ( ros-humble/ament_clang_tidy )
	test? ( ros-humble/ament_cmake_copyright )
	test? ( ros-humble/ament_cmake_gtest )
	test? ( ros-humble/ament_cmake_lint_cmake )
	test? ( ros-humble/ament_lint_auto )
"
DEPEND="${RDEPEND}
	ros-humble/ament_cmake
"

SLOT="0"
ROS_DISTRO="humble"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
