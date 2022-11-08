# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{3_5,3_6} )

inherit ament-cmake

DESCRIPTION="The list of commonly used linters in the ament build system in CMake."
HOMEPAGE="https://wiki.ros.org"
SRC_URI="https://github.com/ros2-gbp/ament_lint-release/archive/release/humble/${PN}/0.12.4-1.tar.gz -> ${PN}-humble-release-${PV}.tar.gz"

LICENSE="Apache-2.0"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
RDEPEND="
	ros-humble/ament_cmake_copyright
	ros-humble/ament_cmake_cppcheck
	ros-humble/ament_cmake_cpplint
	ros-humble/ament_cmake_flake8
	ros-humble/ament_cmake_lint_cmake
	ros-humble/ament_cmake_pep257
	ros-humble/ament_cmake_uncrustify
	ros-humble/ament_cmake_xmllint
"
DEPEND="${RDEPEND}
	ros-humble/ament_cmake_core
	ros-humble/ament_cmake_export_dependencies
"

SLOT="0"
ROS_DISTRO="humble"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
