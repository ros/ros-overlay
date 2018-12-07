# Copyright 2018 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{2_7,3_5,3_6} )

inherit ros-cmake

DESCRIPTION="Mobile robot simulator http://rtv.github.com/Stage"
HOMEPAGE="http://rtv.github.com/Stage"
SRC_URI="https://github.com/ros-gbp/${PN}-release/archive/release/melodic/${PN}/4.3.0-0.tar.gz -> ${PN}-melodic-release-${PV}.tar.gz"

LICENSE="GPL-1"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
RDEPEND="
	ros-melodic/catkin
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
ROS_DISTRO="melodic"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"

src_configure() {
	filter-flags '-std=*'
	ros-cmake_src_configure
}
