# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{2_7,3_5,3_6} )

inherit ros-cmake

DESCRIPTION="The cob_extern stack contains third party libraries needed for operating Ca[...]"
HOMEPAGE="http://ros.org/wiki/cob_extern"
SRC_URI="https://github.com/ipa320/${PN}-release/archive/release/kinetic/${PN}/0.6.14-1.tar.gz -> ${PN}-kinetic-release-${PV}.tar.gz"

LICENSE="( LGPL-2 proprietary )"
KEYWORDS="~x86 ~amd64 ~arm ~arm64"
RDEPEND="
	ros-kinetic/libdlib
	ros-kinetic/libntcan
	ros-kinetic/libpcan
	ros-kinetic/libphidgets
	ros-kinetic/opengm
"
DEPEND="${RDEPEND}
	ros-kinetic/catkin
"

SLOT="0"
ROS_DISTRO="kinetic"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
