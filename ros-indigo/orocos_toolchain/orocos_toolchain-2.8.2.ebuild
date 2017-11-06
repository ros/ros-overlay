# Copyright 2017 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{2_7,3_5} )

inherit ros-cmake

DESCRIPTION="This package provides the entire orocos_toolchain"
HOMEPAGE="https://wiki.ros.org"
SRC_URI="https://github.com/orocos-gbp/orocos_toolchain-release/archive/release/indigo/orocos_toolchain/2.8.2-0.tar.gz -> ${PN}-release-${PV}.tar.gz"

LICENSE="( GPL-2 CC-BY-SA-3.0 CC-BY-SA-3.0 CC-BY-SA-3.0 CC-BY-SA-3.0 )"
KEYWORDS="~x86 ~amd64 ~arm ~arm64"
RDEPEND="
	ros-indigo/catkin
	ros-indigo/log4cpp
	ros-indigo/ocl
	ros-indigo/orogen
	ros-indigo/rtt
	ros-indigo/rtt_typelib
	ros-indigo/typelib
	ros-indigo/utilrb
"
DEPEND="${RDEPEND}
"

SLOT="0"
ROS_DISTRO="indigo"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"

