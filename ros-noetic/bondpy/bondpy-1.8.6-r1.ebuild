# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=7
PYTHON_COMPAT=( python{3_8,3_9,3_10} )

inherit ros-cmake

DESCRIPTION="Python implementation of bond, a mechanism for checking when\
	another p[...]"
HOMEPAGE="http://www.ros.org/wiki/bondpy"
SRC_URI="https://github.com/ros-gbp/bond_core-release/archive/release/noetic/${PN}/1.8.6-1.tar.gz -> ${PN}-noetic-release-${PV}.tar.gz"

LICENSE="BSD"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
RDEPEND="
	ros-noetic/rospy
	ros-noetic/smclib
	dev-libs/ossp-uuid
"
DEPEND="${RDEPEND}
	ros-noetic/bond
	ros-noetic/catkin
	dev-python/setuptools
	dev-python/setuptools
"

SLOT="0"
ROS_DISTRO="noetic"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
