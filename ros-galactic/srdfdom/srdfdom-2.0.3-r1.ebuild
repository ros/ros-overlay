# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=7
PYTHON_COMPAT=( python{3_8,3_9,3_10} )

inherit ament-cmake

DESCRIPTION="Parser for Semantic Robot Description Format \(SRDF\)."
HOMEPAGE="http://ros.org/wiki/srdfdom"
SRC_URI="https://github.com/moveit/${PN}-release/archive/release/galactic/${PN}/2.0.3-1.tar.gz -> ${PN}-galactic-release-${PV}.tar.gz"

LICENSE="BSD"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
IUSE="test"
RDEPEND="
	ros-galactic/console_bridge_vendor
	ros-galactic/tinyxml2_vendor
	ros-galactic/urdf
	ros-galactic/urdfdom_py
	test? ( ros-galactic/ament_cmake_gtest )
	test? ( ros-galactic/ament_cmake_pytest )
	test? ( ros-galactic/ament_lint_auto )
	test? ( ros-galactic/ament_lint_cmake )
	dev-libs/console_bridge
"
DEPEND="${RDEPEND}
	ros-galactic/ament_cmake
	ros-galactic/ament_cmake_python
	ros-galactic/urdfdom_headers
	dev-libs/boost
"

SLOT="0"
ROS_DISTRO="galactic"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
