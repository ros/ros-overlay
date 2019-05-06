# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{2_7,3_5,3_6} )

inherit ros-cmake

DESCRIPTION="<p>This package represents <a href=\"http://openrtm.org/\">OpenRTM-aist</a>[...]"
HOMEPAGE="http://ros.org/wiki/openrtm_aist"
SRC_URI="https://github.com/tork-a/${PN}-release/archive/release/lunar/${PN}/1.1.0-0.tar.gz -> ${PN}-lunar-release-${PV}.tar.gz"

LICENSE="EPL"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
RDEPEND="
	ros-lunar/catkin
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
ROS_DISTRO="lunar"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
