# Copyright 2020 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{2_7,3_5,3_6} )

inherit ros-cmake

DESCRIPTION="Python implementation of bond, a mechanism for checking when\
	another p[...]"
HOMEPAGE="http://www.ros.org/wiki/bondpy"
SRC_URI="https://github.com/ros-gbp/bond_core-release/archive/release/melodic/${PN}/1.8.5-1.tar.gz -> ${PN}-melodic-release-${PV}.tar.gz"

LICENSE="BSD"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
RDEPEND="
	ros-melodic/rospy
	ros-melodic/smclib
	dev-libs/ossp-uuid
"
DEPEND="${RDEPEND}
	ros-melodic/bond
	ros-melodic/catkin
	dev-python/setuptools
	dev-python/setuptools
"

SLOT="0"
ROS_DISTRO="melodic"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
