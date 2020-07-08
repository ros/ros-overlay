# Copyright 2020 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{3_5,3_6} )

inherit ament-cmake

DESCRIPTION="3D testing framework for RViz."
HOMEPAGE="http://ros.org/wiki/rviz2"
SRC_URI="https://github.com/ros2-gbp/rviz-release/archive/release/foxy/${PN}/8.2.0-1.tar.gz -> ${PN}-foxy-release-${PV}.tar.gz"

LICENSE="BSD"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
IUSE="test"
RDEPEND="
	ros-foxy/ament_cmake_gtest
	ros-foxy/rviz_common
	test? ( ros-foxy/ament_cmake_cppcheck )
	test? ( ros-foxy/ament_cmake_cpplint )
	test? ( ros-foxy/ament_cmake_gmock )
	test? ( ros-foxy/ament_cmake_lint_cmake )
	test? ( ros-foxy/ament_cmake_uncrustify )
"
DEPEND="${RDEPEND}
	ros-foxy/ament_cmake
	dev-qt/qtcore:5
	dev-qt/qtwidgets:5
	dev-qt/qttest:5
"

SLOT="0"
ROS_DISTRO="foxy"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
