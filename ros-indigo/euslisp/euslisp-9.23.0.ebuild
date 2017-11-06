# Copyright 2017 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{2_7,3_5} )

inherit ros-cmake

DESCRIPTION="EusLisp is an integrated programming system for the\
  research on intelligent ro"
HOMEPAGE="https://wiki.ros.org"
SRC_URI="https://github.com/tork-a/euslisp-release/archive/release/indigo/euslisp/9.23.0-0.tar.gz -> ${PN}-release-${PV}.tar.gz"

LICENSE="BSD"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
RDEPEND="
	virtual/jpeg
	media-libs/libpng:1.2
	dev-db/postgresql
	x11-libs/libX11
	x11-libs/libXext
	virtual/opengl
	media-fonts/font-adobe-100dpi
	media-fonts/font-adobe-75dpi
"
DEPEND="${RDEPEND}
	ros-indigo/catkin
	ros-indigo/cmake_modules
	ros-indigo/mk
"

SLOT="0"
ROS_DISTRO="indigo"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"

