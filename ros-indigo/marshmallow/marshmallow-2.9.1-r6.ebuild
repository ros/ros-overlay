# Copyright 2017 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{2_7,3_5} )

inherit ros-cmake

DESCRIPTION="A lightweight library for converting complex objects to and from simple Pyt[...]"
HOMEPAGE="https://wiki.ros.org"
SRC_URI="https://github.com/asmodehn/marshmallow-rosrelease/archive/release/indigo/marshmallow/2.9.1-6.tar.gz -> ${PN}-indigo-release-${PV}.tar.gz"

LICENSE="BSD"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
RDEPEND="
	dev-python/python-dateutil
	dev-python/simplejson
"
DEPEND="${RDEPEND}
	ros-indigo/catkin
	ros-indigo/catkin_pip
"

SLOT="0"
ROS_DISTRO="indigo"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
