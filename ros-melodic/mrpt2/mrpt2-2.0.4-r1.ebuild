# Copyright 2020 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{2_7,3_5,3_6} )

inherit ros-cmake

DESCRIPTION="Mobile Robot Programming Toolkit \(MRPT\) version 2.x"
HOMEPAGE="https://www.mrpt.org/"
SRC_URI="https://github.com/mrpt-ros-pkg-release/${PN}-release/archive/release/melodic/${PN}/2.0.4-1.tar.gz -> ${PN}-melodic-release-${PV}.tar.gz"

LICENSE="BSD"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
RDEPEND="
	media-libs/assimp
	dev-cpp/eigen
	virtual/ffmpeg
	media-libs/freeglut
	media-libs/glfw
	virtual/jpeg
	media-libs/opencv
	net-libs/libpcap
	virtual/libudev
	virtual/libusb:1
	x11-libs/libXrandr
	x11-libs/libXxf86vm
	sci-libs/suitesparse
	x11-libs/wxGTK
	x11-libs/wxGTK
	sys-libs/zlib
"
DEPEND="${RDEPEND}
	dev-util/cmake
"

SLOT="0"
ROS_DISTRO="melodic"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
