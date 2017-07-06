# Copyright 2017 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{2_7,3_5} )

inherit ros-cmake

DESCRIPTION="'Orocos/RTT component framework'"
HOMEPAGE="http://www.orocos.org/rtt"
SRC_URI="https://github.com/orocos-gbp/rtt-release/archive/release/indigo/rtt/2.8.3-2.tar.gz -> ${PN}-release-${PV}.tar.gz"

LICENSE="GPL-2"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
RDEPEND="
	ros-indigo/catkin
	dev-libs/boost
	net-misc/omniORB
	virtual/pkgconfig
	dev-perl/XML-XPath
"
DEPEND="${RDEPEND}
	dev-util/cmake
"

SLOT="0"
ROS_DISTRO="indigo"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"

