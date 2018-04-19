# Copyright 2018 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{2_7,3_5} )

inherit ros-cmake

DESCRIPTION="This package contains a C++ parser for the Collada robot\
	description f[...]"
HOMEPAGE="http://ros.org/wiki/collada_parser"
SRC_URI="https://github.com/ros-gbp/collada_urdf-release/archive/release/lunar/${PN}/1.12.11-0.tar.gz -> ${PN}-lunar-release-${PV}.tar.gz"

LICENSE="BSD"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
RDEPEND="
	ros-lunar/class_loader
	ros-lunar/rosconsole
	ros-lunar/urdf
	ros-lunar/urdf_parser_plugin
	dev-libs/collada-dom
"
DEPEND="${RDEPEND}
	ros-lunar/catkin
	dev-libs/urdfdom_headers
"

SLOT="0"
ROS_DISTRO="lunar"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
