# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=7
PYTHON_COMPAT=( python{3_8,3_9,3_10} )

inherit ros-cmake

DESCRIPTION="This package contains a C++ parser for the Collada robot\
	description f[...]"
HOMEPAGE="http://ros.org/wiki/collada_parser"
SRC_URI="https://github.com/ros-gbp/collada_urdf-release/archive/release/noetic/${PN}/1.12.13-1.tar.gz -> ${PN}-noetic-release-${PV}.tar.gz"

LICENSE="BSD"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
RDEPEND="
	ros-noetic/class_loader
	ros-noetic/rosconsole
	ros-noetic/urdf
	ros-noetic/urdf_parser_plugin
	dev-libs/collada-dom
"
DEPEND="${RDEPEND}
	ros-noetic/catkin
	dev-libs/urdfdom_headers
"

SLOT="0"
ROS_DISTRO="noetic"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
