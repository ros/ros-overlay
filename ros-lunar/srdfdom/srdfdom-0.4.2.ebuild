# Copyright 2017 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{2_7,3_5} )

inherit ros-cmake

DESCRIPTION="Parser for Semantic Robot Description Format (SRDF)."
HOMEPAGE="https://wiki.ros.org"
SRC_URI="https://github.com/ros-gbp/srdfdom-release/archive/release/lunar/srdfdom/0.4.2-0.tar.gz -> ${PN}-release-${PV}.tar.gz"

LICENSE="BSD"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
RDEPEND="
	ros-lunar/urdfdom_py
	dev-libs/boost
	dev-libs/console_bridge
	dev-libs/urdfdom_headers
	dev-libs/tinyxml
"
DEPEND="${RDEPEND}
	ros-lunar/catkin
	ros-lunar/cmake_modules
	ros-lunar/urdf
"

SLOT="0"
ROS_DISTRO="lunar"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"

