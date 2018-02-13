# Copyright 2018 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{2_7,3_5} )

inherit ros-cmake

DESCRIPTION="Library which provides the 3D rendering functionality in rviz."
HOMEPAGE="https://github.com/ros2/rviz"
SRC_URI="https://github.com/ros2-gbp/rviz-release/archive/release/ardent/${PN}/3.0.0-1.tar.gz -> ${PN}-ardent-release-${PV}.tar.gz"

LICENSE="BSD"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
IUSE="test"
RDEPEND="
	ros-ardent/ament_index_cpp
	ros-ardent/rviz_ogre_vendor
	test? ( ros-ardent/ament_cmake_cppcheck )
	test? ( ros-ardent/ament_cmake_cpplint )
	test? ( ros-ardent/ament_cmake_gtest )
	test? ( ros-ardent/ament_cmake_lint_cmake )
	test? ( ros-ardent/ament_cmake_uncrustify )
	dev-qt/qtcore:5
	dev-qt/qtgui:5
	dev-qt/qtopengl:5
	dev-qt/qtwidgets:5
"
DEPEND="${RDEPEND}
	ros-ardent/ament_cmake
	dev-qt/qtcore:5
"

SLOT="0"
ROS_DISTRO="ardent"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
