# Copyright 2020 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{2_7,3_5,3_6} )

inherit ros-cmake

DESCRIPTION="ROS Package Tool"
HOMEPAGE="http://wiki.ros.org/rospack"
SRC_URI="https://github.com/ros-gbp/${PN}-release/archive/release/melodic/${PN}/2.5.6-1.tar.gz -> ${PN}-melodic-release-${PV}.tar.gz"

LICENSE="BSD"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
IUSE="test"
RDEPEND="
	ros-melodic/ros_environment
	dev-libs/boost[python]
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
	ros-melodic/catkin
	ros-melodic/cmake_modules
	dev-cpp/gtest
	virtual/pkgconfig
"

SLOT="0"
ROS_DISTRO="melodic"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
