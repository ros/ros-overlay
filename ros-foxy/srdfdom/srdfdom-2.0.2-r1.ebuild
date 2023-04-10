# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{3_8,3_9,3_10} )

inherit ament-cmake

DESCRIPTION="Parser for Semantic Robot Description Format \(SRDF\)."
HOMEPAGE="http://ros.org/wiki/srdfdom"
SRC_URI="https://github.com/moveit/${PN}-release/archive/release/foxy/${PN}/2.0.2-1.tar.gz -> ${PN}-foxy-release-${PV}.tar.gz"

LICENSE="BSD"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
IUSE="test"
RDEPEND="
	ros-foxy/console_bridge_vendor
	ros-foxy/tinyxml2_vendor
	ros-foxy/urdf
	ros-foxy/urdfdom_py
	test? ( ros-foxy/ament_cmake_gtest )
	test? ( ros-foxy/ament_lint_auto )
	test? ( ros-foxy/ament_lint_cmake )
	dev-libs/console_bridge
"
DEPEND="${RDEPEND}
	ros-foxy/ament_cmake
	ros-foxy/urdfdom_headers
	dev-libs/boost
"

SLOT="0"
ROS_DISTRO="foxy"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
