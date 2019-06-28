# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{2_7,3_5,3_6} )

inherit ros-cmake

DESCRIPTION="ROS Package Tool"
HOMEPAGE="http://wiki.ros.org/rospack"
SRC_URI="https://github.com/ros-gbp/${PN}-release/archive/release/kinetic/${PN}/2.4.5-1.tar.gz -> ${PN}-kinetic-release-${PV}.tar.gz"

LICENSE="BSD"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
IUSE="test"
RDEPEND="
	ros-kinetic/ros_environment
	dev-libs/boost[python]
	dev-lang/python
	dev-python/catkin_pkg
	dev-python/rosdep
	dev-libs/tinyxml
	test? ( dev-python/coverage )
"
DEPEND="${RDEPEND}
	ros-kinetic/catkin
	ros-kinetic/cmake_modules
	dev-cpp/gtest
	virtual/pkgconfig
"

SLOT="0"
ROS_DISTRO="kinetic"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"

src_prepare() {
	cd ${P}
	EPATCH_SOURCE="${FILESDIR}" EPATCH_SUFFIX="patch" \
	EPATCH_FORCE="yes" epatch
	ros-cmake_src_prepare
}
