# Copyright 2017 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{2_7,3_5} )

inherit ros-cmake

DESCRIPTION="OpenCV 3.x"
HOMEPAGE="https://wiki.ros.org"
SRC_URI="https://github.com/ros-gbp/opencv3-release/archive/release/kinetic/opencv3/3.2.0-4.tar.gz -> ${PN}-kinetic-release-${PV}.tar.gz"

LICENSE="BSD"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
RDEPEND="
	ros-kinetic/catkin
	virtual/ffmpeg
	media-libs/jasper
	virtual/jpeg
	media-libs/libpng:1.2
	sci-libs/vtk[qt5,rendering]
	dev-libs/protobuf
	dev-lang/python
	dev-python/numpy
	sys-libs/zlib
"
DEPEND="${RDEPEND}
	dev-util/cmake
	media-libs/tiff
	media-libs/libv4l
	dev-libs/protobuf
"

SLOT="0"
ROS_DISTRO="kinetic"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"

src_configure() {
	filter-flags '-march=*' '-mcpu=*' '-mtune=*'
	ros-cmake_src_configure
}
