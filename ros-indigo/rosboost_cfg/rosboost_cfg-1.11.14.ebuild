# Copyright 2017 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{2_7,3_5} )

inherit ros-cmake

DESCRIPTION="'Contains scripts used by the rosboost-cfg tool for determining cflags/lflags/etc'"
HOMEPAGE="http://ros.org/wiki/rosboost_cfg"
SRC_URI="https://github.com/ros-gbp/ros-release/archive/release/indigo/rosboost_cfg/1.11.14-0.tar.gz -> ${PN}-release-${PV}.tar.gz"

LICENSE="BSD"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
RDEPEND="
"
DEPEND="${RDEPEND}
	ros-indigo/catkin
"

SLOT="0"
ROS_DISTRO="indigo"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"

