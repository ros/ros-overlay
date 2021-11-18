# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=7
PYTHON_COMPAT=( python{3_8,3_9,3_10} )

inherit ament-cmake

DESCRIPTION="The entry point package for the ament buildsystem in CMake."
HOMEPAGE="https://wiki.ros.org"
SRC_URI="https://github.com/ros2-gbp/${PN}-release/archive/release/galactic/${PN}/1.1.4-1.tar.gz -> ${PN}-galactic-release-${PV}.tar.gz"

LICENSE="Apache-2.0"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
RDEPEND="
	ros-galactic/ament_cmake_core
	ros-galactic/ament_cmake_export_definitions
	ros-galactic/ament_cmake_export_dependencies
	ros-galactic/ament_cmake_export_include_directories
	ros-galactic/ament_cmake_export_interfaces
	ros-galactic/ament_cmake_export_libraries
	ros-galactic/ament_cmake_export_link_flags
	ros-galactic/ament_cmake_export_targets
	ros-galactic/ament_cmake_libraries
	ros-galactic/ament_cmake_python
	ros-galactic/ament_cmake_target_dependencies
	ros-galactic/ament_cmake_test
	ros-galactic/ament_cmake_version
"
DEPEND="${RDEPEND}
	dev-util/cmake
"

SLOT="0"
ROS_DISTRO="galactic"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
