# Copyright 2018 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{3_5,3_6} )

inherit ament-cmake

DESCRIPTION="Example plugin for RViz - documents and tests RViz plugin development"
HOMEPAGE="https://github.com/ros2/rviz"
SRC_URI="https://github.com/ros2-gbp/rviz-release/archive/release/crystal/${PN}/5.0.0-0.tar.gz -> ${PN}-crystal-release-${PV}.tar.gz"

LICENSE="BSD"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
IUSE="test"
RDEPEND="
	ros-crystal/resource_retriever
	ros-crystal/rviz_rendering
	test? ( ros-crystal/ament_cmake_cppcheck )
	test? ( ros-crystal/ament_cmake_cpplint )
	test? ( ros-crystal/ament_cmake_gmock )
	test? ( ros-crystal/ament_cmake_gtest )
	test? ( ros-crystal/ament_cmake_lint_cmake )
	test? ( ros-crystal/ament_cmake_uncrustify )
	test? ( ros-crystal/ament_index_cpp )
"
DEPEND="${RDEPEND}
	ros-crystal/ament_cmake
	dev-qt/qtcore:5
"

SLOT="0"
ROS_DISTRO="crystal"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
