# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=7
PYTHON_COMPAT=( python{3_8,3_9,3_10} )

inherit ros-cmake

DESCRIPTION="EusLisp is an integrated programming system for the\
  research on intellig[...]"
HOMEPAGE="http://euslisp.github.io/EusLisp/manual.html"
SRC_URI="https://github.com/tork-a/${PN}-release/archive/release/noetic/${PN}/9.28.0-1.tar.gz -> ${PN}-noetic-release-${PV}.tar.gz"

LICENSE="BSD"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
RDEPEND="
	virtual/jpeg
	media-libs/libpng
	dev-db/postgresql
	x11-libs/libX11
	x11-libs/libXext
	virtual/opengl
	media-fonts/font-adobe-100dpi
	media-fonts/font-bh-100dpi
	media-fonts/font-bh-lucidatypewriter-100dpi
	media-fonts/font-bitstream-100dpi
	media-fonts/font-adobe-75dpi
	media-fonts/font-bh-75dpi
	media-fonts/font-bh-lucidatypewriter-75dpi
	media-fonts/font-bitstream-75dpi
"
DEPEND="${RDEPEND}
	ros-noetic/catkin
	ros-noetic/cmake_modules
	ros-noetic/mk
"

SLOT="0"
ROS_DISTRO="noetic"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
