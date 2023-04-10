# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=8
PYTHON_COMPAT=( python{3_8,3_9,3_10,3_11} )

inherit ros-cmake

DESCRIPTION="ViSP standing for Visual Servoing Platform is a modular cross\
	platform[...]"
HOMEPAGE="http://www.ros.org/wiki/visp"
SRC_URI="https://github.com/ros2-gbp/${PN}-release/archive/release/humble/${PN}/3.5.0-2.tar.gz -> ${PN}-humble-release-${PV}.tar.gz"

LICENSE="GPL-2.0-only"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
RDEPEND="
	dev-cpp/eigen
	virtual/jpeg
	virtual/lapack
	media-libs/opencv
	media-libs/libpng
	media-libs/libv4l
	x11-libs/libX11
	dev-libs/libxml2
"
DEPEND="${RDEPEND}
	app-arch/bzip2
	dev-util/cmake
	app-doc/doxygen
"

SLOT="0"
ROS_DISTRO="humble"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
