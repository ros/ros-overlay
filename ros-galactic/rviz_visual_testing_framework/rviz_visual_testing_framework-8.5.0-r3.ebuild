# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=7
PYTHON_COMPAT=( python{3_8,3_9,3_10} )

inherit ament-cmake

DESCRIPTION="3D testing framework for RViz."
HOMEPAGE="http://ros.org/wiki/rviz2"
SRC_URI="https://github.com/ros2-gbp/rviz-release/archive/release/galactic/${PN}/8.5.0-3.tar.gz -> ${PN}-galactic-release-${PV}.tar.gz"

LICENSE="BSD"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
IUSE="test"
RDEPEND="
	ros-galactic/ament_cmake_gtest
	ros-galactic/rcutils
	ros-galactic/rviz_common
	test? ( ros-galactic/ament_cmake_cppcheck )
	test? ( ros-galactic/ament_cmake_cpplint )
	test? ( ros-galactic/ament_cmake_gmock )
	test? ( ros-galactic/ament_cmake_lint_cmake )
	test? ( ros-galactic/ament_cmake_uncrustify )
	test? ( ros-galactic/ament_cmake_xmllint )
	test? ( ros-galactic/ament_lint_auto )
"
DEPEND="${RDEPEND}
	ros-galactic/ament_cmake
	dev-qt/qtcore:5
	dev-qt/qtwidgets:5
	dev-qt/qttest:5
"

SLOT="0"
ROS_DISTRO="galactic"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
