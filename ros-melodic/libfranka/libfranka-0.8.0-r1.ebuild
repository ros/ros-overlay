# Copyright 2020 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{2_7,3_5,3_6} )

inherit ros-cmake

DESCRIPTION="libfranka is a C++ library for Franka Emika research robots"
HOMEPAGE="https://frankaemika.github.io"
SRC_URI="https://github.com/frankaemika/${PN}-release/archive/release/melodic/${PN}/0.8.0-1.tar.gz -> ${PN}-melodic-release-${PV}.tar.gz"

LICENSE="Apache-2.0"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
RDEPEND="
	ros-melodic/catkin
	dev-libs/poco
"
DEPEND="${RDEPEND}
	dev-util/cmake
	dev-cpp/eigen
"

SLOT="0"
ROS_DISTRO="melodic"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
