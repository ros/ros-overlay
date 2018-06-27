# Copyright 2018 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{3_5,3_6} )

inherit ament-cmake

DESCRIPTION="The class_loader package is a ROS-independent package for loading plugins d[...]"
HOMEPAGE="http://ros.org/wiki/class_loader"
SRC_URI="https://github.com/ros2-gbp/${PN}-release/archive/release/bouncy/${PN}/1.1.0-0.tar.gz -> ${PN}-bouncy-release-${PV}.tar.gz"

LICENSE="BSD"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
IUSE="test"
RDEPEND="
	ros-bouncy/console_bridge
	ros-bouncy/poco_vendor
	test? ( ros-bouncy/ament_cmake_gtest )
	test? ( ros-bouncy/ament_lint_auto )
	test? ( ros-bouncy/ament_lint_common )
	dev-libs/poco
"
DEPEND="${RDEPEND}
	ros-bouncy/ament_cmake
"

SLOT="0"
ROS_DISTRO="bouncy"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
