# Copyright 2017 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{2_7,3_5} )

inherit ros-cmake

DESCRIPTION="Orocos component library	This package contains standard components for the O"
HOMEPAGE="http://www.orocos.org/ocl"
SRC_URI="https://github.com/orocos-gbp/ocl-release/archive/release/kinetic/ocl/2.9.0-1.tar.gz -> ${PN}-release-${PV}.tar.gz"

LICENSE="LGPL-2"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
RDEPEND="
	ros-kinetic/catkin
	ros-kinetic/log4cpp
	ros-kinetic/rtt
	sys-libs/ncurses
	sys-libs/readline
	dev-lang/lua
	sci-libs/netcdf
"
DEPEND="${RDEPEND}
	dev-util/cmake
"

SLOT="0"
ROS_DISTRO="kinetic"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"

