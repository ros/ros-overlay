# Copyright 2017 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{2_7,3_5} )

inherit ros-cmake

DESCRIPTION="ROS Package Tool"
HOMEPAGE="https://wiki.ros.org"
SRC_URI="https://github.com/ros-gbp/rospack-release/archive/release/lunar/rospack/2.4.1-0.tar.gz -> ${PN}-release-${PV}.tar.gz"

LICENSE="BSD"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
RDEPEND="
	dev-libs/boost
	virtual/pkgconfig
	dev-lang/python
	dev-python/catkin_pkg
	dev-python/rosdep
	dev-libs/tinyxml2
"
DEPEND="${RDEPEND}
	ros-lunar/catkin
	ros-lunar/cmake_modules
	dev-cpp/gtest
"

SLOT="0"
ROS_DISTRO="lunar"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"

