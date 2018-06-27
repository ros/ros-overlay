# Copyright 2018 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{3_5,3_6} )

inherit ament-cmake

DESCRIPTION="This package contains a C++ parser for the Unified Robot Description\
	F[...]"
HOMEPAGE="https://github.com/ros2/urdf"
SRC_URI="https://github.com/ros2-gbp/${PN}-release/archive/release/bouncy/${PN}/2.1.0-0.tar.gz -> ${PN}-bouncy-release-${PV}.tar.gz"

LICENSE="BSD"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
IUSE="test"
RDEPEND="
	ros-bouncy/tinyxml_vendor
	ros-bouncy/urdfdom
	ros-bouncy/urdfdom_headers
	test? ( ros-bouncy/ament_lint_auto )
	test? ( ros-bouncy/ament_lint_common )
	dev-libs/tinyxml
"
DEPEND="${RDEPEND}
	ros-bouncy/ament_cmake_ros
	ros-bouncy/console_bridge
"

SLOT="0"
ROS_DISTRO="bouncy"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
