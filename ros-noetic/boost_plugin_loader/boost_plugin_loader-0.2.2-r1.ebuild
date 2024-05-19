# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=7
PYTHON_COMPAT=( python{3_8,3_9,3_10} )

inherit ros-cmake

DESCRIPTION="Boost plugin loader implementation"
HOMEPAGE="https://wiki.ros.org"
SRC_URI="https://github.com/tesseract-robotics-release/${PN}-release/archive/release/noetic/${PN}/0.2.2-1.tar.gz -> ${PN}-noetic-release-${PV}.tar.gz"

LICENSE="Apache-2.0"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
IUSE="test"
RDEPEND="
	dev-libs/boost
	dev-libs/boost[python]
	test? ( dev-cpp/gtest )
"
DEPEND="${RDEPEND}
	ros-noetic/ros_industrial_cmake_boilerplate
	dev-util/cmake
"

SLOT="0"
ROS_DISTRO="noetic"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
