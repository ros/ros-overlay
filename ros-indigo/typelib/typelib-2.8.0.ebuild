# Copyright 2017 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{2_7,3_5} )

inherit ros-cmake

DESCRIPTION="This library offers an introspection mechanism for C/C valuetypes Ie	 "
HOMEPAGE="https://wiki.ros.org"
SRC_URI="https://github.com/orocos-gbp/typelib-release/archive/release/indigo/typelib/2.8.0-0.tar.gz -> ${PN}-release-${PV}.tar.gz"

LICENSE="CC-BY-SA-3.0"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
RDEPEND="
	ros-indigo/catkin
	ros-indigo/utilrb
	dev-libs/boost
	dev-ruby/facets
	dev-cpp/gccxml
	dev-libs/libxml2
"
DEPEND="${RDEPEND}
	dev-util/cmake
	virtual/pkgconfig
"

SLOT="0"
ROS_DISTRO="indigo"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"

