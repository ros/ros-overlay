# Copyright 2017 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{2_7,3_5} )

inherit ros-cmake

DESCRIPTION="Orocos/RTT typelib bindings"
HOMEPAGE="http://doudou.github.com/orogen"
SRC_URI="https://github.com/orocos-gbp/rtt_typelib-release/archive/release/indigo/rtt_typelib/2.8.0-0.tar.gz -> ${PN}-release-${PV}.tar.gz"

LICENSE="GPL-2"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
RDEPEND="
	ros-indigo/catkin
	ros-indigo/rtt
	ros-indigo/typelib
"
DEPEND="${RDEPEND}
	dev-util/cmake
"

SLOT="0"
ROS_DISTRO="indigo"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"

