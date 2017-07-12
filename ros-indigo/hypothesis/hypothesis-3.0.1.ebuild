# Copyright 2017 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{2_7,3_5} )

inherit ros-cmake

DESCRIPTION="Advanced propertybased QuickChecklike testing for Python"
HOMEPAGE="https://wiki.ros.org"
SRC_URI="https://github.com/asmodehn/hypothesis-rosrelease/archive/release/indigo/hypothesis/3.0.1-0.tar.gz -> ${PN}-release-${PV}.tar.gz"

LICENSE="CC-BY-SA-3.0"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
RDEPEND="
	virtual/python-enum34
"
DEPEND="${RDEPEND}
	ros-indigo/catkin
	ros-indigo/catkin_pip
"

SLOT="0"
ROS_DISTRO="indigo"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"

