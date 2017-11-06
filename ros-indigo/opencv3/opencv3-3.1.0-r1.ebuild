# Copyright 2017 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{2_7,3_5} )

inherit ros-cmake

DESCRIPTION="OpenCV 30"
HOMEPAGE="https://wiki.ros.org"
SRC_URI="https://github.com/ros-gbp/opencv3-release/archive/release/indigo/opencv3/3.1.0-1.tar.gz -> ${PN}-release-${PV}.tar.gz"

LICENSE="BSD"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
RDEPEND="
	ros-indigo/catkin
	virtual/ffmpeg
	media-libs/jasper
	virtual/jpeg
	media-libs/libpng
	dev-qt/qtgui:4
	sci-libs/vtk
	dev-lang/python
	dev-python/numpy
	python
	sys-libs/zlib
"
DEPEND="${RDEPEND}
	dev-util/cmake
	dev-qt/qtcore:4
	media-libs/tiff
	media-libs/libv4l
"

SLOT="0"
ROS_DISTRO="indigo"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"

src_configure() {
	filter-flags '-march=*' '-mcpu=*' '-mtune=*'
	ros-cmake_src_configure
}

