# Copyright 2018 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{2_7,3_5} )

inherit ros-cmake

DESCRIPTION="The entry point package for the ament buildsystem in CMake."
HOMEPAGE="https://wiki.ros.org"
SRC_URI="https://github.com/ros2-gbp/${PN}-release/archive/release/ardent/${PN}/0.4.0-0.tar.gz -> ${PN}-ardent-release-${PV}.tar.gz"

LICENSE="Apache-2.0"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
RDEPEND="
	ros-ardent/ament_cmake_core
	ros-ardent/ament_cmake_export_definitions
	ros-ardent/ament_cmake_export_dependencies
	ros-ardent/ament_cmake_export_include_directories
	ros-ardent/ament_cmake_export_interfaces
	ros-ardent/ament_cmake_export_libraries
	ros-ardent/ament_cmake_export_link_flags
	ros-ardent/ament_cmake_libraries
	ros-ardent/ament_cmake_python
	ros-ardent/ament_cmake_target_dependencies
	ros-ardent/ament_cmake_test
"
DEPEND="${RDEPEND}
	dev-util/cmake
"

SLOT="0"
ROS_DISTRO="ardent"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
