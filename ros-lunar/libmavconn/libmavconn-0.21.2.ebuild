# Copyright 2017 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{2_7,3_5} )

inherit ros-cmake

DESCRIPTION="MAVLink communication library.\
	This library provide unified connection[...]"
HOMEPAGE="https://wiki.ros.org"
SRC_URI="https://github.com/mavlink/mavros-release/archive/release/lunar/libmavconn/0.21.2-0.tar.gz -> ${PN}-lunar-release-${PV}.tar.gz"

LICENSE="( GPL-3 LGPL-3 BSD )"
KEYWORDS="~x86 ~amd64 ~arm ~arm64"
RDEPEND="
	ros-lunar/mavlink
	dev-libs/boost
	dev-libs/console_bridge
"
DEPEND="${RDEPEND}
	ros-lunar/catkin
"

SLOT="0"
ROS_DISTRO="lunar"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
