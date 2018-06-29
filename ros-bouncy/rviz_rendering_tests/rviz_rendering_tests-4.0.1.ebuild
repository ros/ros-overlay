# Copyright 2018 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{3_5,3_6} )

inherit ament-cmake

DESCRIPTION="Example plugin for RViz - documents and tests RViz plugin development"
HOMEPAGE="https://github.com/ros2/rviz"
SRC_URI="https://github.com/ros2-gbp/rviz-release/archive/release/bouncy/${PN}/4.0.1-0.tar.gz -> ${PN}-bouncy-release-${PV}.tar.gz"

LICENSE="BSD"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
IUSE="test"
RDEPEND="
	ros-bouncy/resource_retriever
	ros-bouncy/rviz_rendering
	test? ( ros-bouncy/ament_cmake_cppcheck )
	test? ( ros-bouncy/ament_cmake_cpplint )
	test? ( ros-bouncy/ament_cmake_gmock )
	test? ( ros-bouncy/ament_cmake_gtest )
	test? ( ros-bouncy/ament_cmake_lint_cmake )
	test? ( ros-bouncy/ament_cmake_uncrustify )
	test? ( ros-bouncy/ament_index_cpp )
"
DEPEND="${RDEPEND}
	ros-bouncy/ament_cmake
	dev-qt/qtcore:5
"

SLOT="0"
ROS_DISTRO="bouncy"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
