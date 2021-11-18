# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=7
PYTHON_COMPAT=( python{3_8,3_9,3_10} )

inherit ament-cmake

DESCRIPTION="The list of commonly used linters in the ament buildsytem in CMake."
HOMEPAGE="https://wiki.ros.org"
SRC_URI="https://github.com/ros2-gbp/ament_lint-release/archive/release/galactic/${PN}/0.10.6-1.tar.gz -> ${PN}-galactic-release-${PV}.tar.gz"

LICENSE="Apache-2.0"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
RDEPEND="
	ros-galactic/ament_cmake_copyright
	ros-galactic/ament_cmake_cppcheck
	ros-galactic/ament_cmake_cpplint
	ros-galactic/ament_cmake_flake8
	ros-galactic/ament_cmake_lint_cmake
	ros-galactic/ament_cmake_pep257
	ros-galactic/ament_cmake_uncrustify
	ros-galactic/ament_cmake_xmllint
"
DEPEND="${RDEPEND}
	ros-galactic/ament_cmake_core
	ros-galactic/ament_cmake_export_dependencies
"

SLOT="0"
ROS_DISTRO="galactic"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
