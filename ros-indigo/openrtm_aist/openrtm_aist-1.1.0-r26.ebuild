# Copyright 2017 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{2_7,3_5} )

inherit ros-cmake

DESCRIPTION="NONE"
HOMEPAGE="https://wiki.ros.org"
SRC_URI="https://github.com/tork-a/openrtm_aist-release/archive/release/indigo/openrtm_aist/1.1.0-26.tar.gz -> ${PN}-release-${PV}.tar.gz"

LICENSE="CC-BY-SA-3.0"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
RDEPEND="
	ros-indigo/catkin
	net-misc/omniORB
	dev-libs/ossp-uuid
"
DEPEND="${RDEPEND}
	sys-devel/automake
	dev-util/cmake
	app-doc/doxygen
	sys-devel/libtool
	virtual/pkgconfig
"

SLOT="0"
ROS_DISTRO="indigo"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"

