# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{2_7,3_5,3_6} )

inherit ros-cmake

DESCRIPTION="The cob_extern stack contains third party libraries needed for operating Ca[...]"
HOMEPAGE="http://ros.org/wiki/cob_extern"
SRC_URI="https://github.com/ipa320/${PN}-release/archive/release/noetic/${PN}/0.6.18-1.tar.gz -> ${PN}-noetic-release-${PV}.tar.gz"

LICENSE="( LGPL Proprietary )"
KEYWORDS="~x86 ~amd64 ~arm ~arm64"
RDEPEND="
	ros-noetic/libdlib
	ros-noetic/libntcan
	ros-noetic/libpcan
	ros-noetic/libphidgets
	ros-noetic/opengm
"
DEPEND="${RDEPEND}
	ros-noetic/catkin
"

SLOT="0"
ROS_DISTRO="noetic"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
