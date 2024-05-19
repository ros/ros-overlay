# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=7
PYTHON_COMPAT=( python{3_8,3_9,3_10} )

inherit ros-cmake

DESCRIPTION="C++ library for interfacing with iRobot\'s Create 1 and Create 2"
HOMEPAGE="http://wiki.ros.org/libcreate"
SRC_URI="https://github.com/AutonomyLab/${PN}-release/archive/release/noetic/${PN}/3.0.0-1.tar.gz -> ${PN}-noetic-release-${PV}.tar.gz"

LICENSE="BSD"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
IUSE="test"
RDEPEND="
	ros-noetic/catkin
	dev-libs/boost[python]
	test? ( dev-cpp/gtest )
"
DEPEND="${RDEPEND}
	dev-util/cmake
"

SLOT="0"
ROS_DISTRO="noetic"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
