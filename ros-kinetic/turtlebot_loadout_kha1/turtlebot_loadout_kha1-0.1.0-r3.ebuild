# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{2_7,3_5,3_6} )

inherit ros-cmake

DESCRIPTION="Enables the TurtleBot mobile robot KHA1 hardware loadout"
HOMEPAGE="https://wiki.ros.org"
SRC_URI="https://github.com/TurtleBot-Mfg-release/${PN}/archive/release/kinetic/${PN}/0.1.0-3.tar.gz -> ${PN}-kinetic-release-${PV}.tar.gz"

LICENSE="( MIT Apache-1.0 )"
KEYWORDS="~x86 ~amd64 ~arm ~arm64"
RDEPEND="
"
DEPEND="${RDEPEND}
	ros-kinetic/catkin
"

SLOT="0"
ROS_DISTRO="kinetic"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
