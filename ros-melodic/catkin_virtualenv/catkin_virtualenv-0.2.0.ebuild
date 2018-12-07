# Copyright 2018 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{2_7,3_5,3_6} )

inherit ros-cmake

DESCRIPTION="Bundle python requirements in a catkin package via virtualenv."
HOMEPAGE="https://wiki.ros.org"
SRC_URI="https://github.com/locusrobotics/${PN}-release/archive/release/melodic/${PN}/0.2.0-0.tar.gz -> ${PN}-melodic-release-${PV}.tar.gz"

LICENSE="GPL-1"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
IUSE="test"
RDEPEND="
	test? ( ros-melodic/roslint )
	virtual/python-enum34
	dev-python/virtualenv
	=dev-lang/python-3*
"
DEPEND="${RDEPEND}
	ros-melodic/catkin
"

SLOT="0"
ROS_DISTRO="melodic"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
