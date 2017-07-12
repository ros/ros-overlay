# Copyright 2017 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{2_7,3_5} )

inherit ros-cmake

DESCRIPTION="soem_master contains a C wrapper around soem_core, a factory object to registe"
HOMEPAGE="http://wiki.ros.org/soem_master"
SRC_URI="https://github.com/orocos-gbp/rtt_soem-release/archive/release/indigo/soem_master/0.1.1-0.tar.gz -> ${PN}-release-${PV}.tar.gz"

LICENSE="LGPL-2"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
RDEPEND="
	ros-indigo/rtt
	ros-indigo/soem
"
DEPEND="${RDEPEND}
	ros-indigo/catkin
"

SLOT="0"
ROS_DISTRO="indigo"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"

