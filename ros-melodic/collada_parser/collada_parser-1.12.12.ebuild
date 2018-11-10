# Copyright 2018 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{2_7,3_5,3_6} )

inherit ros-cmake

DESCRIPTION="This package contains a C++ parser for the Collada robot\
	description f[...]"
HOMEPAGE="http://ros.org/wiki/collada_parser"
SRC_URI="https://github.com/ros-gbp/collada_urdf-release/archive/release/melodic/${PN}/1.12.12-0.tar.gz -> ${PN}-melodic-release-${PV}.tar.gz"

LICENSE="BSD"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
RDEPEND="
	ros-melodic/class_loader
	ros-melodic/rosconsole
	ros-melodic/urdf
	ros-melodic/urdf_parser_plugin
	dev-libs/collada-dom
"
DEPEND="${RDEPEND}
	ros-melodic/catkin
	dev-libs/urdfdom_headers
"

SLOT="0"
ROS_DISTRO="melodic"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
