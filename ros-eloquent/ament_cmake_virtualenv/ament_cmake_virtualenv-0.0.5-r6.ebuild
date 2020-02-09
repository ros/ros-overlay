# Copyright 2020 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{3_5,3_6} )

inherit ament-cmake

DESCRIPTION="Bundle python requirements in a ament package via virtualenv."
HOMEPAGE="https://wiki.ros.org"
SRC_URI="https://github.com/esol-community/ament_virtualenv-release/archive/release/eloquent/${PN}/0.0.5-6.tar.gz -> ${PN}-eloquent-release-${PV}.tar.gz"

LICENSE="GPL-1"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
IUSE="test"
RDEPEND="
	ros-eloquent/ament_virtualenv
	test? ( ros-eloquent/ament_cmake_copyright )
	test? ( ros-eloquent/ament_cmake_lint_cmake )
"
DEPEND="${RDEPEND}
	ros-eloquent/ament_cmake_core
	ros-eloquent/ament_cmake_test
"

SLOT="0"
ROS_DISTRO="eloquent"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
