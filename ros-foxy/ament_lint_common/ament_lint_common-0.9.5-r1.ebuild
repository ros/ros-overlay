# Copyright 2020 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{3_5,3_6} )

inherit ament-cmake

DESCRIPTION="The list of commonly used linters in the ament buildsytem in CMake."
HOMEPAGE="https://wiki.ros.org"
SRC_URI="https://github.com/ros2-gbp/ament_lint-release/archive/release/foxy/${PN}/0.9.5-1.tar.gz -> ${PN}-foxy-release-${PV}.tar.gz"

LICENSE="Apache-2.0"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
RDEPEND="
	ros-foxy/ament_cmake_copyright
	ros-foxy/ament_cmake_cppcheck
	ros-foxy/ament_cmake_cpplint
	ros-foxy/ament_cmake_flake8
	ros-foxy/ament_cmake_lint_cmake
	ros-foxy/ament_cmake_pep257
	ros-foxy/ament_cmake_uncrustify
	ros-foxy/ament_cmake_xmllint
"
DEPEND="${RDEPEND}
	ros-foxy/ament_cmake_core
	ros-foxy/ament_cmake_export_dependencies
"

SLOT="0"
ROS_DISTRO="foxy"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
