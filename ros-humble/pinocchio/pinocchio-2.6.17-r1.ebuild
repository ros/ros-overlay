# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=8
PYTHON_COMPAT=( python{3_8,3_9,3_10,3_11} )

inherit ros-cmake

DESCRIPTION="A fast and flexible implementation of Rigid Body Dynamics algorithms and th[...]"
HOMEPAGE="https://github.com/stack-of-tasks/pinocchio"
SRC_URI="https://github.com/ros2-gbp/${PN}-release/archive/release/humble/${PN}/2.6.17-1.tar.gz -> ${PN}-humble-release-${PV}.tar.gz"

LICENSE="BSD-2"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
RDEPEND="
	ros-humble/eigenpy
	ros-humble/hpp-fcl
	dev-libs/boost[python]
	dev-cpp/eigen
	dev-libs/urdfdom
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
ROS_DISTRO="humble"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
