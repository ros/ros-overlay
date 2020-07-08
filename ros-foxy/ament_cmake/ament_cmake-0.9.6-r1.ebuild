# Copyright 2020 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{3_5,3_6} )

inherit ament-cmake

DESCRIPTION="The entry point package for the ament buildsystem in CMake."
HOMEPAGE="https://wiki.ros.org"
SRC_URI="https://github.com/ros2-gbp/${PN}-release/archive/release/foxy/${PN}/0.9.6-1.tar.gz -> ${PN}-foxy-release-${PV}.tar.gz"

LICENSE="Apache-2.0"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
RDEPEND="
	ros-foxy/ament_cmake_core
	ros-foxy/ament_cmake_export_definitions
	ros-foxy/ament_cmake_export_dependencies
	ros-foxy/ament_cmake_export_include_directories
	ros-foxy/ament_cmake_export_interfaces
	ros-foxy/ament_cmake_export_libraries
	ros-foxy/ament_cmake_export_link_flags
	ros-foxy/ament_cmake_export_targets
	ros-foxy/ament_cmake_libraries
	ros-foxy/ament_cmake_python
	ros-foxy/ament_cmake_target_dependencies
	ros-foxy/ament_cmake_test
	ros-foxy/ament_cmake_version
"
DEPEND="${RDEPEND}
	dev-util/cmake
"

SLOT="0"
ROS_DISTRO="foxy"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
