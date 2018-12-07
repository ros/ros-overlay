# Copyright 2018 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{3_5,3_6} )

inherit ament-cmake

DESCRIPTION="The entry point package for the ament buildsystem in CMake."
HOMEPAGE="https://wiki.ros.org"
SRC_URI="https://github.com/ros2-gbp/${PN}-release/archive/release/crystal/${PN}/0.6.0-4.tar.gz -> ${PN}-crystal-release-${PV}.tar.gz"

LICENSE="Apache-2.0"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
RDEPEND="
	ros-crystal/ament_cmake_core
	ros-crystal/ament_cmake_export_definitions
	ros-crystal/ament_cmake_export_dependencies
	ros-crystal/ament_cmake_export_include_directories
	ros-crystal/ament_cmake_export_interfaces
	ros-crystal/ament_cmake_export_libraries
	ros-crystal/ament_cmake_export_link_flags
	ros-crystal/ament_cmake_libraries
	ros-crystal/ament_cmake_python
	ros-crystal/ament_cmake_target_dependencies
	ros-crystal/ament_cmake_test
"
DEPEND="${RDEPEND}
	dev-util/cmake
"

SLOT="0"
ROS_DISTRO="crystal"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
