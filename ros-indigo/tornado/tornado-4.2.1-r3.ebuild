# Copyright 2017 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{2_7,3_5} )

inherit ros-cmake

DESCRIPTION="Tornado is a Python web framework and asynchronous networking library, originall"
HOMEPAGE="https://wiki.ros.org"
SRC_URI="https://github.com/asmodehn/tornado-rosrelease/archive/release/indigo/tornado/4.2.1-3.tar.gz -> ${PN}-release-${PV}.tar.gz"

LICENSE="BSD"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
RDEPEND="
	ros-indigo/backports_ssl_match_hostname
	ros-indigo/certifi
	virtual/python-futures
	virtual/python-singledispatch
"
DEPEND="${RDEPEND}
	ros-indigo/catkin
	ros-indigo/catkin_pip
"

SLOT="0"
ROS_DISTRO="indigo"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"

