# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=8
PYTHON_COMPAT=( python{3_8,3_9,3_10,3_11} )

inherit ament-cmake

DESCRIPTION="Parser for Semantic Robot Description Format \(SRDF\)."
HOMEPAGE="http://ros.org/wiki/srdfdom"
SRC_URI="https://github.com/ros2-gbp/${PN}-release/archive/release/humble/${PN}/2.0.4-1.tar.gz -> ${PN}-humble-release-${PV}.tar.gz"

LICENSE="BSD"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
IUSE="test"
RDEPEND="
	ros-humble/console_bridge_vendor
	ros-humble/tinyxml2_vendor
	ros-humble/urdf
	ros-humble/urdfdom_py
	test? ( ros-humble/ament_cmake_gtest )
	test? ( ros-humble/ament_cmake_pytest )
	test? ( ros-humble/ament_lint_auto )
	test? ( ros-humble/ament_lint_cmake )
	dev-libs/console_bridge
"
DEPEND="${RDEPEND}
	ros-humble/ament_cmake
	ros-humble/ament_cmake_python
	ros-humble/urdfdom_headers
	dev-libs/boost
"

SLOT="0"
ROS_DISTRO="humble"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
