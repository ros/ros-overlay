# Copyright 2017 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{2_7,3_5} )

inherit ros-cmake

DESCRIPTION="Bundle a virtualenv with a catkin package."
HOMEPAGE="https://wiki.ros.org"
SRC_URI="https://github.com/locusrobotics/${PN}-release/archive/release/kinetic/${PN}/0.1.4-1.tar.gz -> ${PN}-kinetic-release-${PV}.tar.gz"

LICENSE="GPL-1"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
RDEPEND="
	virtual/python-enum34
	dev-python/virtualenv
	=dev-lang/python-3*
"
DEPEND="${RDEPEND}
	ros-kinetic/catkin
"

SLOT="0"
ROS_DISTRO="kinetic"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
