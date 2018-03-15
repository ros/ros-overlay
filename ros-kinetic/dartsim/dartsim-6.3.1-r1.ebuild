# Copyright 2018 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{2_7,3_5} )

inherit ros-cmake

DESCRIPTION="DART \(Dynamic Animation and Robotics Toolkit\) is a collaborative,\
	cr[...]"
HOMEPAGE="http://dartsim.github.io/"
SRC_URI="https://github.com/${PN}/ros-${PN}-release/archive/release/kinetic/${PN}/6.3.1-1.tar.gz -> ${PN}-kinetic-release-${PV}.tar.gz"

LICENSE="BSD"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
RDEPEND="
	ros-kinetic/catkin
	media-libs/assimp
	dev-libs/boost
	sci-physics/bullet
	dev-cpp/eigen
	media-libs/freeglut
	sci-libs/fcl
	sci-libs/flann
	dev-libs/urdfdom
	x11-libs/libXi
	x11-libs/libXmu
	dev-libs/tinyxml
	dev-libs/tinyxml2
"
DEPEND="${RDEPEND}
	dev-util/cmake
	virtual/pkgconfig
"

SLOT="0"
ROS_DISTRO="kinetic"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
