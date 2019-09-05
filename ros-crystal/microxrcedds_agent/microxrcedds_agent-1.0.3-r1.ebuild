# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{3_5,3_6} )

inherit ros-cmake

DESCRIPTION="DDS-XCRE agent implementation"
HOMEPAGE="https://wiki.ros.org"
SRC_URI="https://github.com/micro-ROS/${PN}-release/archive/release/crystal/${PN}/1.0.3-1.tar.gz -> ${PN}-crystal-release-${PV}.tar.gz"

LICENSE="Apache-2.0"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
RDEPEND="
	ros-crystal/fastcdr
	ros-crystal/fastrtps
"
DEPEND="${RDEPEND}
	dev-cpp/asio
	dev-util/cmake
"

SLOT="0"
ROS_DISTRO="crystal"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
