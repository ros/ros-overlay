# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=7
PYTHON_COMPAT=( python{3_8,3_9,3_10} )

inherit ros-cmake

DESCRIPTION="A fast and flexible implementation of Rigid Body Dynamics algorithms and th[...]"
HOMEPAGE="https://github.com/stack-of-tasks/pinocchio"
SRC_URI="https://github.com/stack-of-tasks/${PN}-ros-release/archive/release/noetic/${PN}/2.6.21-1.tar.gz -> ${PN}-noetic-release-${PV}.tar.gz"

LICENSE="BSD-2"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
RDEPEND="
	ros-noetic/catkin
	ros-noetic/eigenpy
	ros-noetic/hpp-fcl
	dev-libs/boost[python]
	dev-cpp/eigen
	dev-libs/urdfdom
	dev-lang/python
	dev-python/numpy
	dev-lang/python
	dev-python/numpy
"
DEPEND="${RDEPEND}
	sys-devel/clang
	dev-util/cmake
	app-doc/doxygen
	dev-vcs/git
"

SLOT="0"
ROS_DISTRO="noetic"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
