# Copyright 2018 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{3_5,3_6} )

inherit ros-cmake

DESCRIPTION="Implementation of RTPS standard."
HOMEPAGE="https://wiki.ros.org"
SRC_URI="https://github.com/ros2-gbp/${PN}-release/archive/release/bouncy/${PN}/1.6.0-3.tar.gz -> ${PN}-bouncy-release-${PV}.tar.gz"

LICENSE="Apache-2.0"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
RDEPEND="
	ros-bouncy/fastcdr
	dev-libs/openssl
	dev-libs/tinyxml2
"
DEPEND="${RDEPEND}
	dev-cpp/asio
	dev-util/cmake
"

SLOT="0"
ROS_DISTRO="bouncy"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
