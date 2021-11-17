# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=7
PYTHON_COMPAT=( python{3_8,3_9,3_10} )

inherit ros-cmake

DESCRIPTION="ROS Package Tool"
HOMEPAGE="http://wiki.ros.org/rospack"
SRC_URI="https://github.com/ros-gbp/${PN}-release/archive/release/noetic/${PN}/2.6.2-1.tar.gz -> ${PN}-noetic-release-${PV}.tar.gz"

LICENSE="BSD"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
IUSE="test"
RDEPEND="
	ros-noetic/ros_environment
	dev-libs/boost[python]
	dev-libs/boost
	dev-libs/boost
	dev-lang/python
	dev-python/catkin_pkg
	dev-util/rosdep
	dev-lang/python
	dev-python/catkin_pkg
	dev-util/rosdep
	dev-libs/tinyxml2
	test? ( dev-python/coverage )
	test? ( dev-python/coverage )
"
DEPEND="${RDEPEND}
	ros-noetic/catkin
	ros-noetic/cmake_modules
	dev-cpp/gtest
	virtual/pkgconfig
"

SLOT="0"
ROS_DISTRO="noetic"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
