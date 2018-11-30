# Copyright 2018 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{3_5,3_6} )

inherit ament-cmake

DESCRIPTION="The list of commonly used linters in the ament buildsytem in CMake."
HOMEPAGE="https://wiki.ros.org"
SRC_URI="https://github.com/ros2-gbp/ament_lint-release/archive/release/crystal/${PN}/0.6.1-0.tar.gz -> ${PN}-crystal-release-${PV}.tar.gz"

LICENSE="Apache-2.0"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
RDEPEND="
	ros-crystal/ament_cmake_copyright
	ros-crystal/ament_cmake_cppcheck
	ros-crystal/ament_cmake_cpplint
	ros-crystal/ament_cmake_flake8
	ros-crystal/ament_cmake_lint_cmake
	ros-crystal/ament_cmake_pep257
	ros-crystal/ament_cmake_uncrustify
	ros-crystal/ament_cmake_xmllint
"
DEPEND="${RDEPEND}
	ros-crystal/ament_cmake_core
	ros-crystal/ament_cmake_export_dependencies
"

SLOT="0"
ROS_DISTRO="crystal"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
