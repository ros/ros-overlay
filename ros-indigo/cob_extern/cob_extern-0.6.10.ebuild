# Copyright 2017 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{2_7,3_5} )

inherit ros-cmake

DESCRIPTION="The cob_extern stack contains third party libraries needed for operating CareO"
HOMEPAGE="https://wiki.ros.org"
SRC_URI="https://github.com/ipa320/cob_extern-release/archive/release/indigo/cob_extern/0.6.10-0.tar.gz -> ${PN}-release-${PV}.tar.gz"

LICENSE="( LGPL-2 CC-BY-SA-3.0 )"
KEYWORDS="~x86 ~amd64 ~arm ~arm64"
RDEPEND="
	ros-indigo/libdlib
	ros-indigo/libntcan
	ros-indigo/libopengm
	ros-indigo/libpcan
	ros-indigo/libphidgets
"
DEPEND="${RDEPEND}
	ros-indigo/catkin
"

SLOT="0"
ROS_DISTRO="indigo"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"

