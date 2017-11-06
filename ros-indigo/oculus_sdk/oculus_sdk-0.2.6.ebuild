# Copyright 2017 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{2_7,3_5} )

inherit ros-cmake

DESCRIPTION="The Oculus Rift SDK"
HOMEPAGE="https://developer.oculusvr.com"
SRC_URI="https://github.com/thedash/oculus_sdk-release/archive/release/indigo/oculus_sdk/0.2.6-0.tar.gz -> ${PN}-indigo-release-${PV}.tar.gz"

LICENSE="KEYWORDS="~x86 ~amd64 ~arm ~arm64"
RDEPEND="
	virtual/libudev
"
DEPEND="${RDEPEND}
	dev-util/cmake
	media-libs/freeglut
	x11-libs/libXext
	x11-libs/libXinerama
	media-libs/mesa
"

SLOT="0"
ROS_DISTRO="indigo"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
