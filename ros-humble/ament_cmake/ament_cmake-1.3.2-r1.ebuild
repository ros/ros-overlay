# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{3_5,3_6} )

inherit ament-cmake

DESCRIPTION="The entry point package for the ament buildsystem in CMake."
HOMEPAGE="https://wiki.ros.org"
SRC_URI="https://github.com/ros2-gbp/${PN}-release/archive/release/humble/${PN}/1.3.2-1.tar.gz -> ${PN}-humble-release-${PV}.tar.gz"

LICENSE="Apache-2.0"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
RDEPEND="
	ros-humble/ament_cmake_core
	ros-humble/ament_cmake_export_definitions
	ros-humble/ament_cmake_export_dependencies
	ros-humble/ament_cmake_export_include_directories
	ros-humble/ament_cmake_export_interfaces
	ros-humble/ament_cmake_export_libraries
	ros-humble/ament_cmake_export_link_flags
	ros-humble/ament_cmake_export_targets
	ros-humble/ament_cmake_gen_version_h
	ros-humble/ament_cmake_libraries
	ros-humble/ament_cmake_python
	ros-humble/ament_cmake_target_dependencies
	ros-humble/ament_cmake_test
	ros-humble/ament_cmake_version
"
DEPEND="${RDEPEND}
	dev-util/cmake
"

SLOT="0"
ROS_DISTRO="humble"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
