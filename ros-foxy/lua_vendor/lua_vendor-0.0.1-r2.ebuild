# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{3_8,3_9,3_10} )

inherit ament-cmake

DESCRIPTION="TODO: Package description"
HOMEPAGE="https://wiki.ros.org"
SRC_URI="https://github.com/OUXT-Polaris/${PN}-release/archive/release/foxy/${PN}/0.0.1-2.tar.gz -> ${PN}-foxy-release-${PV}.tar.gz"

LICENSE="Apache-2.0"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
IUSE="test"
RDEPEND="
	test? ( ros-foxy/ament_cmake_copyright )
	test? ( ros-foxy/ament_cmake_cppcheck )
	test? ( ros-foxy/ament_cmake_cpplint )
	test? ( ros-foxy/ament_cmake_flake8 )
	test? ( ros-foxy/ament_cmake_pep257 )
	test? ( ros-foxy/ament_cmake_uncrustify )
	test? ( ros-foxy/ament_cmake_xmllint )
	test? ( ros-foxy/ament_lint_auto )
"
DEPEND="${RDEPEND}
	ros-foxy/ament_cmake
"

SLOT="0"
ROS_DISTRO="foxy"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
