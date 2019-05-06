# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{2_7,3_5,3_6} )

inherit ros-cmake

DESCRIPTION="The cob_extern stack contains third party libraries needed for operating Ca[...]"
HOMEPAGE="http://ros.org/wiki/cob_extern"
SRC_URI="https://github.com/ipa320/${PN}-release/archive/release/indigo/${PN}/0.6.12-0.tar.gz -> ${PN}-indigo-release-${PV}.tar.gz"

LICENSE="( LGPL-2 proprietary )"
KEYWORDS="~x86 ~amd64 ~arm ~arm64"
RDEPEND="
	ros-indigo/libconcorde_tsp_solver
	ros-indigo/libdlib
	ros-indigo/libntcan
	ros-indigo/libpcan
	ros-indigo/libphidgets
	ros-indigo/libqsopt
	ros-indigo/opengm
"
DEPEND="${RDEPEND}
	ros-indigo/catkin
"

SLOT="0"
ROS_DISTRO="indigo"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
