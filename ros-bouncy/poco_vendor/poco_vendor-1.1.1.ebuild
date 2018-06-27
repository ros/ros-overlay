# Copyright 2018 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{3_5,3_6} )

inherit ros-cmake

DESCRIPTION="CMake shim over the poco library."
HOMEPAGE="https://wiki.ros.org"
SRC_URI="https://github.com/ros2-gbp/${PN}-release/archive/release/bouncy/${PN}/1.1.1-0.tar.gz -> ${PN}-bouncy-release-${PV}.tar.gz"

LICENSE="( Apache-2.0 Boost-1.0 )"
KEYWORDS="~x86 ~amd64 ~arm ~arm64"
RDEPEND="
	dev-libs/poco
	dev-libs/libpcre
	sys-libs/zlib
"
DEPEND="${RDEPEND}
	dev-util/cmake
"

SLOT="0"
ROS_DISTRO="bouncy"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
