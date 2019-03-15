# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{3_5,3_6} )

inherit ament-cmake

DESCRIPTION="This package provides the Behavior Trees core library."
HOMEPAGE="https://wiki.ros.org"
SRC_URI="https://github.com/BehaviorTree/${PN}-release/archive/release/crystal/${PN}/3.0.4-0.tar.gz -> ${PN}-crystal-release-${PV}.tar.gz"

LICENSE="MIT"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
IUSE="test"
RDEPEND="
	test? ( ros-crystal/ament_cmake_gtest )
	dev-libs/elfutils
	net-libs/cppzmq
"
DEPEND="${RDEPEND}
	ros-crystal/ament_cmake
"

SLOT="0"
ROS_DISTRO="crystal"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
