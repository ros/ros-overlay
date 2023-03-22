# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{3_8,3_9,3_10} )

inherit ament-cmake

DESCRIPTION="The ability to add Google Benchmark tests in the ament buildsystem in CMake."
HOMEPAGE="https://wiki.ros.org"
SRC_URI="https://github.com/ros2-gbp/ament_cmake-release/archive/release/humble/${PN}/1.3.3-1.tar.gz -> ${PN}-humble-release-${PV}.tar.gz"

LICENSE="Apache-2.0"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
RDEPEND="
	ros-humble/ament_cmake_test
	ros-humble/google_benchmark_vendor
"
DEPEND="${RDEPEND}
	ros-humble/ament_cmake_core
	ros-humble/ament_cmake_export_dependencies
	ros-humble/ament_cmake_python
"

SLOT="0"
ROS_DISTRO="humble"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
