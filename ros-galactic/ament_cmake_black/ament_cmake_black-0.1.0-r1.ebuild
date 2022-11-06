# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{3_5,3_6} )

inherit ament-cmake

DESCRIPTION="The CMake API for ament_black to lint Python code using black."
HOMEPAGE="https://wiki.ros.org"
SRC_URI="https://github.com/Timple/ament_black-release/archive/release/galactic/${PN}/0.1.0-1.tar.gz -> ${PN}-galactic-release-${PV}.tar.gz"

LICENSE="Apache-2.0"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
IUSE="test"
RDEPEND="
	test? ( ros-galactic/ament_cmake_copyright )
	test? ( ros-galactic/ament_cmake_lint_cmake )
"
DEPEND="${RDEPEND}
	ros-galactic/ament_cmake_core
	ros-galactic/ament_cmake_test
"

SLOT="0"
ROS_DISTRO="galactic"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
