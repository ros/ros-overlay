# Copyright 2017 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{2_7,3_5} )

inherit ros-cmake

DESCRIPTION="The package cob_canopen_motor implements a controller-drive component which is c"
HOMEPAGE="http://ros.org/wiki/cob_canopen_motor"
SRC_URI="https://github.com/ipa320/cob_driver-release/archive/release/kinetic/cob_canopen_motor/0.6.10-0.tar.gz -> ${PN}-release-${PV}.tar.gz"

LICENSE="LGPL-2"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
RDEPEND="
	ros-kinetic/cob_generic_can
	ros-kinetic/cob_utilities
	ros-kinetic/roscpp
"
DEPEND="${RDEPEND}
	ros-kinetic/catkin
"

SLOT="0"
ROS_DISTRO="kinetic"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"

