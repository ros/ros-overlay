# Copyright 2017 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{2_7,3_5} )

inherit ros-cmake

DESCRIPTION="This package contains a C++ parser for the Collada robot\
	description f[...]"
HOMEPAGE="https://wiki.ros.org"
SRC_URI="https://github.com/ros-gbp/collada_urdf-release/archive/release/indigo/collada_parser/1.11.14-0.tar.gz -> ${PN}-indigo-release-${PV}.tar.gz"

LICENSE="BSD"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
RDEPEND="
	ros-indigo/class_loader
	ros-indigo/roscpp
	ros-indigo/urdf_parser_plugin
	dev-libs/collada-dom
	dev-libs/urdfdom_headers
"
DEPEND="${RDEPEND}
	ros-indigo/catkin
	ros-indigo/urdf
"

SLOT="0"
ROS_DISTRO="indigo"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
