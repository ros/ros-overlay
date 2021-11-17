# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=7
PYTHON_COMPAT=( python{3_8,3_9,3_10} )

inherit ros-cmake

DESCRIPTION="libfranka is a C++ library for Franka Emika research robots"
HOMEPAGE="https://frankaemika.github.io"
SRC_URI="https://github.com/frankaemika/${PN}-release/archive/release/noetic/${PN}/0.8.0-4.tar.gz -> ${PN}-noetic-release-${PV}.tar.gz"

LICENSE="Apache-2.0"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
RDEPEND="
	ros-noetic/catkin
	dev-libs/poco
"
DEPEND="${RDEPEND}
	dev-util/cmake
	dev-cpp/eigen
"

SLOT="0"
ROS_DISTRO="noetic"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
