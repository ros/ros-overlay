# Copyright 2017 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{2_7,3_5} )

inherit ros-cmake

DESCRIPTION="'This package contains the rFSM flavor of Statecharts.'"
HOMEPAGE="http://people.mech.kuleuven.be/~mklotzbucher/rfsm/README.html"
SRC_URI="https://github.com/orocos-gbp/rfsm-release/archive/release/indigo/rfsm/1.0.0-0.tar.gz -> ${PN}-release-${PV}.tar.gz"

LICENSE="( LGPL-2 BSD )"
KEYWORDS="~x86 ~amd64 ~arm ~arm64"
RDEPEND="
"
DEPEND="${RDEPEND}
	ros-indigo/catkin
"

SLOT="0"
ROS_DISTRO="indigo"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"

