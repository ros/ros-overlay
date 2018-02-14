# Copyright 2018 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{2_7,3_5} )

inherit ros-cmake

DESCRIPTION="The list of commonly used linters in the ament buildsytem in CMake."
HOMEPAGE="https://wiki.ros.org"
SRC_URI="https://github.com/ros2-gbp/ament_lint-release/archive/release/ardent/${PN}/0.4.0-0.tar.gz -> ${PN}-ardent-release-${PV}.tar.gz"

LICENSE="Apache-2.0"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
RDEPEND="
	ros-ardent/ament_cmake_copyright
	ros-ardent/ament_cmake_cppcheck
	ros-ardent/ament_cmake_cpplint
	ros-ardent/ament_cmake_flake8
	ros-ardent/ament_cmake_lint_cmake
	ros-ardent/ament_cmake_pep257
	ros-ardent/ament_cmake_uncrustify
"
DEPEND="${RDEPEND}
	ros-ardent/ament_cmake_core
	ros-ardent/ament_cmake_export_dependencies
"

SLOT="0"
ROS_DISTRO="ardent"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
