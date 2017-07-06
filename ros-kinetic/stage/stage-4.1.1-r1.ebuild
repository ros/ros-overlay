# Copyright 2017 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{2_7,3_5} )

inherit ros-cmake

DESCRIPTION="'Mobile robot simulator http://rtv.github.com/Stage'"
HOMEPAGE="https://wiki.ros.org"
SRC_URI="https://github.com/ros-gbp/stage-release/archive/release/kinetic/stage/4.1.1-1.tar.gz -> ${PN}-release-${PV}.tar.gz"

LICENSE="GPL-1"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
RDEPEND="
	ros-kinetic/catkin
	x11-libs/gtk+:2
	=x11-libs/fltk-1*
	virtual/jpeg
	virtual/opengl
"
DEPEND="${RDEPEND}
	dev-util/cmake
	sys-devel/libtool
	virtual/pkgconfig
"

SLOT="0"
CPP11="0"
ROS_DISTRO="kinetic"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
