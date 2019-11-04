# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{3_5,3_6} )

inherit ament-cmake

DESCRIPTION="The list of commonly used linters in the ament buildsytem in CMake."
HOMEPAGE="https://wiki.ros.org"
SRC_URI="https://github.com/ros2-gbp/ament_lint-release/archive/release/eloquent/${PN}/0.8.1-1.tar.gz -> ${PN}-eloquent-release-${PV}.tar.gz"

LICENSE="Apache-2.0"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
RDEPEND="
	ros-eloquent/ament_cmake_copyright
	ros-eloquent/ament_cmake_cppcheck
	ros-eloquent/ament_cmake_cpplint
	ros-eloquent/ament_cmake_flake8
	ros-eloquent/ament_cmake_lint_cmake
	ros-eloquent/ament_cmake_pep257
	ros-eloquent/ament_cmake_uncrustify
	ros-eloquent/ament_cmake_xmllint
"
DEPEND="${RDEPEND}
	ros-eloquent/ament_cmake_core
	ros-eloquent/ament_cmake_export_dependencies
"

SLOT="0"
ROS_DISTRO="eloquent"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
