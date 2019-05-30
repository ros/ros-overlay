# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{2_7,3_5,3_6} )

inherit ros-cmake

DESCRIPTION="Orocos component library\
	This package contains standard components for[...]"
HOMEPAGE="http://www.orocos.org/ocl"
SRC_URI="https://github.com/orocos-gbp/${PN}-release/archive/release/lunar/${PN}/2.9.1-1.tar.gz -> ${PN}-lunar-release-${PV}.tar.gz"

LICENSE="LGPL-2"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
RDEPEND="
	ros-lunar/catkin
	ros-lunar/log4cpp
	ros-lunar/rtt
	sys-libs/ncurses
	sys-libs/readline
	dev-lang/lua
	sci-libs/netcdf
	sci-libs/netcdf-cxx
	sci-libs/netcdf-fortran
"
DEPEND="${RDEPEND}
	dev-util/cmake
"

SLOT="0"
ROS_DISTRO="lunar"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
