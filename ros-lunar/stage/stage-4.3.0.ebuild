# Copyright 2017 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6

inherit ros-cmake
DESCRIPTION="Mobile robot simulator http://rtv.github.com/Stage"
HOMEPAGE="https://wiki.ros.org"
SRC_URI="https://github.com/ros-gbp/stage-release/archive/release/lunar/stage/4.3.0-0.tar.gz -> ${PN}-${PV}.tar.gz"

LICENSE="GPL-1"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
PYTHON_DEPEND="3::3.5"

RDEPEND="
	ros-lunar/catkin
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

SLOT="lunar"
CMAKE_BUILD_TYPE=RelWithDebInfo
ROS_DISTRO="lunar"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"

src_configure() {
	filter-flags '-std=*'
	cmake-utils_src_configure
}

