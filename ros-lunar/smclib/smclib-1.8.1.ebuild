# Copyright 2017 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{2_7,3_5} )

inherit ros-cmake

DESCRIPTION="The State Machine Compiler \(SMC\) from http://smc.sourceforge.net/\
	co[...]"
HOMEPAGE="https://wiki.ros.org"
SRC_URI="https://github.com/ros-gbp/bond_core-release/archive/release/lunar/${PN}/1.8.1-0.tar.gz -> ${PN}-lunar-release-${PV}.tar.gz"

LICENSE="MPL-1.1"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
RDEPEND="
"
DEPEND="${RDEPEND}
	ros-lunar/catkin
"

SLOT="0"
ROS_DISTRO="lunar"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
