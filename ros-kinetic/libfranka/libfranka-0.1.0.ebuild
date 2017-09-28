# Copyright 2017 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{2_7,3_5} )

inherit ros-cmake

DESCRIPTION="libfranka is a C++ library for Franka Emika research robots"
HOMEPAGE="https://wiki.ros.org"
SRC_URI="https://github.com/frankaemika/libfranka-release/archive/release/kinetic/libfranka/0.1.0-0.tar.gz -> ${PN}-kinetic-release-${PV}.tar.gz"

LICENSE="Apache-2.0"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
RDEPEND="
	ros-kinetic/catkin
	dev-libs/poco
"
DEPEND="${RDEPEND}
	dev-util/cmake
	app-doc/doxygen
"

SLOT="0"
ROS_DISTRO="kinetic"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
