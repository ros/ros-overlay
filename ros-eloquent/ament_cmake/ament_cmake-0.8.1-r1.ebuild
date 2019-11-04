# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{3_5,3_6} )

inherit ament-cmake

DESCRIPTION="The entry point package for the ament buildsystem in CMake."
HOMEPAGE="https://wiki.ros.org"
SRC_URI="https://github.com/ros2-gbp/${PN}-release/archive/release/eloquent/${PN}/0.8.1-1.tar.gz -> ${PN}-eloquent-release-${PV}.tar.gz"

LICENSE="Apache-2.0"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
RDEPEND="
	ros-eloquent/ament_cmake_core
	ros-eloquent/ament_cmake_export_definitions
	ros-eloquent/ament_cmake_export_dependencies
	ros-eloquent/ament_cmake_export_include_directories
	ros-eloquent/ament_cmake_export_interfaces
	ros-eloquent/ament_cmake_export_libraries
	ros-eloquent/ament_cmake_export_link_flags
	ros-eloquent/ament_cmake_libraries
	ros-eloquent/ament_cmake_python
	ros-eloquent/ament_cmake_target_dependencies
	ros-eloquent/ament_cmake_test
	ros-eloquent/ament_cmake_version
"
DEPEND="${RDEPEND}
	dev-util/cmake
"

SLOT="0"
ROS_DISTRO="eloquent"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
