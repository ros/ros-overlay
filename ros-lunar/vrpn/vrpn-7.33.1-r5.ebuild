# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{2_7,3_5,3_6} )

inherit ros-cmake

DESCRIPTION="The VRPN is a library and set of servers that interfaces with virtual-reali[...]"
HOMEPAGE="https://github.com/vrpn/vrpn/wiki"
SRC_URI="https://github.com/ros-drivers-gbp/${PN}-release/archive/release/lunar/${PN}/7.33.1-5.tar.gz -> ${PN}-lunar-release-${PV}.tar.gz"

LICENSE="BSL1.0"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
RDEPEND="
	ros-lunar/catkin
"
DEPEND="${RDEPEND}
	dev-util/cmake
"

SLOT="0"
ROS_DISTRO="lunar"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
