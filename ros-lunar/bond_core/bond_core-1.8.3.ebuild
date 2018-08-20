# Copyright 2018 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{2_7,3_5,3_6} )

inherit ros-cmake

DESCRIPTION="A bond allows two processes, A and B, to know when the other has\
	termi[...]"
HOMEPAGE="http://www.ros.org/wiki/bond_core"
SRC_URI="https://github.com/ros-gbp/${PN}-release/archive/release/lunar/${PN}/1.8.3-0.tar.gz -> ${PN}-lunar-release-${PV}.tar.gz"

LICENSE="BSD"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
RDEPEND="
	ros-lunar/bond
	ros-lunar/bondcpp
	ros-lunar/bondpy
	ros-lunar/smclib
"
DEPEND="${RDEPEND}
	ros-lunar/catkin
"

SLOT="0"
ROS_DISTRO="lunar"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
