# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{3_5,3_6} )

inherit ament-cmake

DESCRIPTION="The entry point package for the ament buildsystem in CMake."
HOMEPAGE="https://wiki.ros.org"
SRC_URI="https://github.com/ros2-gbp/${PN}-release/archive/release/dashing/${PN}/0.7.3-1.tar.gz -> ${PN}-dashing-release-${PV}.tar.gz"

LICENSE="Apache-2.0"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
RDEPEND="
	ros-dashing/ament_cmake_core
	ros-dashing/ament_cmake_export_definitions
	ros-dashing/ament_cmake_export_dependencies
	ros-dashing/ament_cmake_export_include_directories
	ros-dashing/ament_cmake_export_interfaces
	ros-dashing/ament_cmake_export_libraries
	ros-dashing/ament_cmake_export_link_flags
	ros-dashing/ament_cmake_libraries
	ros-dashing/ament_cmake_python
	ros-dashing/ament_cmake_target_dependencies
	ros-dashing/ament_cmake_test
"
DEPEND="${RDEPEND}
	dev-util/cmake
"

SLOT="0"
ROS_DISTRO="dashing"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
