# Copyright 2018 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{2_7,3_5} )

inherit ros-cmake

DESCRIPTION="C++ library for interfacing with iRobot\'s Create 1 and Create 2"
HOMEPAGE="http://wiki.ros.org/libcreate"
SRC_URI="https://github.com/AutonomyLab/${PN}-release/archive/release/lunar/${PN}/1.6.0-0.tar.gz -> ${PN}-lunar-release-${PV}.tar.gz"

LICENSE="BSD"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
RDEPEND="
	ros-lunar/catkin
	dev-libs/boost
"
DEPEND="${RDEPEND}
	dev-util/cmake
	dev-vcs/git
"

SLOT="0"
ROS_DISTRO="lunar"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
