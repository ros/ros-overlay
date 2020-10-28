# Copyright 2020 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{2_7,3_5,3_6} )

inherit ros-cmake

DESCRIPTION="Low-level build system macros and infrastructure for ROS."
HOMEPAGE="http://wiki.ros.org/catkin"
SRC_URI="https://github.com/ros-gbp/${PN}-release/archive/release/melodic/${PN}/0.7.29-1.tar.gz -> ${PN}-melodic-release-${PV}.tar.gz"

LICENSE="BSD"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
IUSE="test"
RDEPEND="
	dev-cpp/gtest
	dev-cpp/gtest
	dev-lang/python
	dev-python/catkin_pkg
	dev-python/empy
	dev-python/nose
	dev-python/catkin_pkg
	dev-python/empy
	dev-python/nose
	test? ( dev-python/mock )
	test? ( dev-python/nose )
	test? ( dev-python/mock )
	test? ( dev-python/nose )
"
DEPEND="${RDEPEND}
	dev-util/cmake
	dev-python/setuptools
	dev-python/setuptools
"

SLOT="0"
BUILD_BINARY="0"
ROS_DISTRO="melodic"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"

src_prepare() {
	cd ${P}
	EPATCH_SOURCE="${FILESDIR}" EPATCH_SUFFIX="patch" \
	EPATCH_FORCE="yes" epatch
	ros-cmake_src_prepare
}
