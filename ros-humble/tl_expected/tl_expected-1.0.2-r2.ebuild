# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{3_8,3_9,3_10} )

inherit ament-cmake

DESCRIPTION="C++11/14/17 std::expected with functional-style extensions"
HOMEPAGE="https://github.com/TartanLlama/expected"
SRC_URI="https://github.com/ros2-gbp/cpp_polyfills-release/archive/release/humble/${PN}/1.0.2-2.tar.gz -> ${PN}-humble-release-${PV}.tar.gz"

LICENSE="Creative-Commons-Zero-v1.0-Universal"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
RDEPEND="
"
DEPEND="${RDEPEND}
	ros-humble/ament_cmake
"

SLOT="0"
ROS_DISTRO="humble"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
