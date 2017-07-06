# Copyright 2017 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{2_7,3_5} )

inherit ros-cmake

DESCRIPTION="'This packagae implements the special homing procedure that is needed for old cob'"
HOMEPAGE="https://wiki.ros.org"
SRC_URI="https://github.com/ipa320/cob_driver-release/archive/release/indigo/cob_elmo_homing/0.6.8-0.tar.gz -> ${PN}-release-${PV}.tar.gz"

LICENSE="LGPL-3"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
RDEPEND="
	ros-indigo/canopen_402
	ros-indigo/class_loader
"
DEPEND="${RDEPEND}
	ros-indigo/catkin
"

SLOT="0"
ROS_DISTRO="indigo"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"

