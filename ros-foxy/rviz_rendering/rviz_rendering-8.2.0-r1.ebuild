# Copyright 2020 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{3_5,3_6} )

inherit ament-cmake

DESCRIPTION="Library which provides the 3D rendering functionality in rviz."
HOMEPAGE="https://github.com/ros2/rviz/blob/ros2/README.md"
SRC_URI="https://github.com/ros2-gbp/rviz-release/archive/release/foxy/${PN}/8.2.0-1.tar.gz -> ${PN}-foxy-release-${PV}.tar.gz"

LICENSE="BSD"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
IUSE="test"
RDEPEND="
	ros-foxy/ament_index_cpp
	ros-foxy/resource_retriever
	ros-foxy/rviz_assimp_vendor
	ros-foxy/rviz_ogre_vendor
	test? ( ros-foxy/ament_cmake_cppcheck )
	test? ( ros-foxy/ament_cmake_cpplint )
	test? ( ros-foxy/ament_cmake_gmock )
	test? ( ros-foxy/ament_cmake_gtest )
	test? ( ros-foxy/ament_cmake_lint_cmake )
	test? ( ros-foxy/ament_cmake_uncrustify )
	test? ( ros-foxy/rviz_assimp_vendor )
	dev-cpp/eigen
	dev-qt/qtcore:5
	dev-qt/qtgui:5
	dev-qt/qtopengl:5
	dev-qt/qtwidgets:5
	dev-qt/qtcore:5
	dev-qt/qtwidgets:5
	dev-qt/qttest:5
"
DEPEND="${RDEPEND}
	ros-foxy/ament_cmake
	ros-foxy/eigen3_cmake_module
"

SLOT="0"
ROS_DISTRO="foxy"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
