# Copyright 2017 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{2_7,3_5} )

inherit ros-cmake

DESCRIPTION="A bond allows two processes, A and B, to know when the other has
	terminated,"
HOMEPAGE="https://wiki.ros.org"
SRC_URI="https://github.com/ros-gbp/bond_core-release/archive/release/lunar/bond_core/1.7.19-0.tar.gz -> ${PN}-release-${PV}.tar.gz"

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

