# Copyright 2018 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{2_7,3_5} )

inherit ros-cmake

DESCRIPTION="This package contains a C++ parser for the Unified Robot Description\
	F[...]"
HOMEPAGE="http://ros.org/wiki/urdf"
SRC_URI="https://github.com/ros2-gbp/${PN}-release/archive/release/ardent/${PN}/2.0.0-0.tar.gz -> ${PN}-ardent-release-${PV}.tar.gz"

LICENSE="BSD"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
IUSE="test"
RDEPEND="
	ros-ardent/tinyxml_vendor
	ros-ardent/urdfdom
	ros-ardent/urdfdom_headers
	test? ( ros-ardent/ament_lint_auto )
	test? ( ros-ardent/ament_lint_common )
	dev-libs/tinyxml
"
DEPEND="${RDEPEND}
	ros-ardent/ament_cmake_ros
	ros-ardent/console_bridge
"

SLOT="0"
ROS_DISTRO="ardent"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
