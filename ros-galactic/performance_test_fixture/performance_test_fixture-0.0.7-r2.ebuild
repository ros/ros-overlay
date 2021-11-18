# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=7
PYTHON_COMPAT=( python{3_8,3_9,3_10} )

inherit ament-cmake

DESCRIPTION="Test fixture and CMake macro for using osrf_testing_tools_cpp with Google B[...]"
HOMEPAGE="https://wiki.ros.org"
SRC_URI="https://github.com/ros2-gbp/${PN}-release/archive/release/galactic/${PN}/0.0.7-2.tar.gz -> ${PN}-galactic-release-${PV}.tar.gz"

LICENSE="Apache-2.0"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
IUSE="test"
RDEPEND="
	ros-galactic/google_benchmark_vendor
	ros-galactic/osrf_testing_tools_cpp
	test? ( ros-galactic/ament_cmake_google_benchmark )
	test? ( ros-galactic/ament_lint_auto )
	test? ( ros-galactic/ament_lint_common )
"
DEPEND="${RDEPEND}
	ros-galactic/ament_cmake_core
	ros-galactic/ament_cmake_export_dependencies
	ros-galactic/ament_cmake_export_targets
	ros-galactic/ament_cmake_test
"

SLOT="0"
ROS_DISTRO="galactic"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
