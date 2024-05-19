# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=7
PYTHON_COMPAT=( python{3_8,3_9,3_10} )

inherit ros-cmake

DESCRIPTION="A package vendoring recent versions of pybind11 and providing extra macros [...]"
HOMEPAGE="https://wiki.ros.org"
SRC_URI="https://github.com/wxmerkt/${PN}-release/archive/release/noetic/${PN}/2.10.3-2.tar.gz -> ${PN}-noetic-release-${PV}.tar.gz"

LICENSE="BSD"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
RDEPEND="
	dev-cpp/eigen
	dev-lang/python
	dev-python/numpy
	dev-lang/python
	dev-python/numpy
"
DEPEND="${RDEPEND}
	ros-noetic/catkin
"

SLOT="0"
ROS_DISTRO="noetic"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
