# Copyright 2018 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{2_7,3_5,3_6} )

inherit ros-cmake

DESCRIPTION="The State Machine Compiler \(SMC\) from http://smc.sourceforge.net/\
	co[...]"
HOMEPAGE="http://smc.sourceforge.net/"
SRC_URI="https://github.com/ros-gbp/bond_core-release/archive/release/kinetic/${PN}/1.8.3-0.tar.gz -> ${PN}-kinetic-release-${PV}.tar.gz"

LICENSE="MPL-1.1"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
RDEPEND="
"
DEPEND="${RDEPEND}
	ros-kinetic/catkin
"

SLOT="0"
ROS_DISTRO="kinetic"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
