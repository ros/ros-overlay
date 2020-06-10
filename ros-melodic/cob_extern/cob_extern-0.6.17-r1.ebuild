# Copyright 2020 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{2_7,3_5,3_6} )

inherit ros-cmake

DESCRIPTION="The cob_extern stack contains third party libraries needed for operating Ca[...]"
HOMEPAGE="http://ros.org/wiki/cob_extern"
SRC_URI="https://github.com/ipa320/${PN}-release/archive/release/melodic/${PN}/0.6.17-1.tar.gz -> ${PN}-melodic-release-${PV}.tar.gz"

LICENSE="( LGPL-2 proprietary )"
KEYWORDS="~x86 ~amd64 ~arm ~arm64"
RDEPEND="
	ros-melodic/libdlib
	ros-melodic/libntcan
	ros-melodic/libpcan
	ros-melodic/libphidgets
	ros-melodic/opengm
"
DEPEND="${RDEPEND}
	ros-melodic/catkin
"

SLOT="0"
ROS_DISTRO="melodic"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
