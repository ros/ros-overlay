# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{3_8,3_9,3_10} )

inherit ament-cmake

DESCRIPTION="Implementation of C++20\'s std::span"
HOMEPAGE="https://github.com/tcbrindle/span"
SRC_URI="https://github.com/ros2-gbp/cpp_polyfills-release/archive/release/humble/${PN}/1.0.2-2.tar.gz -> ${PN}-humble-release-${PV}.tar.gz"

LICENSE="BSL-1.0"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
IUSE="test"
RDEPEND="
	test? ( ros-humble/ament_cmake_gtest )
"
DEPEND="${RDEPEND}
	ros-humble/ament_cmake
"

SLOT="0"
ROS_DISTRO="humble"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
