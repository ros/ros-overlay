# Copyright 2018 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{3_5,3_6} )

inherit ros-cmake

DESCRIPTION="Test package, which uses things exported by osrf_testing_tools_cpp."
HOMEPAGE="https://wiki.ros.org"
SRC_URI="https://github.com/ros2-gbp/osrf_testings_tools_cpp-release/archive/release/bouncy/${PN}/1.0.0-0.tar.gz -> ${PN}-bouncy-release-${PV}.tar.gz"

LICENSE="Apache-2.0"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
IUSE="test"
RDEPEND="
	test? ( ros-bouncy/osrf_testing_tools_cpp )
"
DEPEND="${RDEPEND}
	dev-util/cmake
"

SLOT="0"
ROS_DISTRO="bouncy"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
