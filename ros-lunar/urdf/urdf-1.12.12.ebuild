# Copyright 2018 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{2_7,3_5} )

inherit ros-cmake

DESCRIPTION="This package contains a C++ parser for the Unified Robot Description\
	F[...]"
HOMEPAGE="https://wiki.ros.org"
SRC_URI="https://github.com/ros-gbp/${PN}-release/archive/release/lunar/${PN}/1.12.12-0.tar.gz -> ${PN}-lunar-release-${PV}.tar.gz"

LICENSE="BSD"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
RDEPEND="
	ros-lunar/pluginlib
	ros-lunar/rosconsole_bridge
	ros-lunar/roscpp
	test? ros-lunar/rostest
	dev-libs/urdfdom
	dev-libs/urdfdom_headers
	dev-libs/tinyxml
"
IUSE="test"
DEPEND="${RDEPEND}
	ros-lunar/catkin
	ros-lunar/cmake_modules
	ros-lunar/urdf_parser_plugin
"

SLOT="0"
ROS_DISTRO="lunar"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
