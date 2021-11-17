# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=7
PYTHON_COMPAT=( python{3_8,3_9,3_10} )

inherit ros-cmake

DESCRIPTION="Mobile robot simulator http://rtv.github.com/Stage"
HOMEPAGE="http://rtv.github.com/Stage"
SRC_URI="https://github.com/ros-gbp/${PN}-release/archive/release/noetic/${PN}/4.3.0-1.tar.gz -> ${PN}-noetic-release-${PV}.tar.gz"

LICENSE="GPL-1"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
RDEPEND="
	ros-noetic/catkin
	x11-libs/gtk+:2
	x11-libs/fltk
	virtual/jpeg
	virtual/opengl
"
DEPEND="${RDEPEND}
	dev-util/cmake
	sys-devel/libtool
	virtual/pkgconfig
"

SLOT="0"
ROS_DISTRO="noetic"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"

src_configure() {
	filter-flags '-std=*'
	ros-cmake_src_configure
}
