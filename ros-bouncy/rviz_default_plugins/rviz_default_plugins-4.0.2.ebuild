# Copyright 2018 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{3_5,3_6} )

inherit ament-cmake

DESCRIPTION="Several default plugins for rviz to cover the basic functionality."
HOMEPAGE="https://github.com/ros2/rviz/blob/ros2/README.md"
SRC_URI="https://github.com/ros2-gbp/rviz-release/archive/release/bouncy/${PN}/4.0.2-0.tar.gz -> ${PN}-bouncy-release-${PV}.tar.gz"

LICENSE="BSD"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
IUSE="test"
RDEPEND="
	ros-bouncy/geometry_msgs
	ros-bouncy/laser_geometry
	ros-bouncy/map_msgs
	ros-bouncy/nav_msgs
	ros-bouncy/pluginlib
	ros-bouncy/rclcpp
	ros-bouncy/resource_retriever
	ros-bouncy/rviz_common
	ros-bouncy/rviz_rendering
	ros-bouncy/tinyxml_vendor
	ros-bouncy/urdf
	ros-bouncy/visualization_msgs
	test? ( ros-bouncy/ament_cmake_cppcheck )
	test? ( ros-bouncy/ament_cmake_cpplint )
	test? ( ros-bouncy/ament_cmake_gmock )
	test? ( ros-bouncy/ament_cmake_gtest )
	test? ( ros-bouncy/ament_cmake_lint_cmake )
	test? ( ros-bouncy/ament_cmake_uncrustify )
	test? ( ros-bouncy/ament_index_cpp )
	test? ( ros-bouncy/rviz_rendering_tests )
	test? ( ros-bouncy/rviz_visual_testing_framework )
	dev-qt/qtcore:5
	dev-qt/qtgui:5
	dev-qt/qtopengl:5
	dev-qt/qtwidgets:5
"
DEPEND="${RDEPEND}
	ros-bouncy/ament_cmake
	dev-qt/qtcore:5
"

SLOT="0"
ROS_DISTRO="bouncy"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
