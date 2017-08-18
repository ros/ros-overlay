# Copyright 2017 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{2_7,3_5} )

inherit ros-cmake

DESCRIPTION="p"
HOMEPAGE="https://wiki.ros.org"
SRC_URI="https://github.com/tork-a/openhrp3-release/archive/release/kinetic/openhrp3/3.1.9-3.tar.gz -> ${PN}-kinetic-release-${PV}.tar.gz"

LICENSE="CC-BY-SA-3.0"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
RDEPEND="
	ros-kinetic/openrtm_aist
	sci-libs/atlas
	dev-libs/boost
	dev-libs/collada-dom
	dev-cpp/eigen
	dev-lang/f2c
	dev-java/jython
	virtual/jpeg
	media-libs/libpng:1.2
	dev-libs/libxml2
	net-misc/omniORB[python]
"
DEPEND="${RDEPEND}
	dev-util/cmake
	app-doc/doxygen
	virtual/pkgconfig
"

SLOT="0"
ROS_DISTRO="kinetic"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"

