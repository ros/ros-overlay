# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{3_5,3_6} )

inherit ament-cmake

DESCRIPTION="Several default plugins for rviz to cover the basic functionality."
HOMEPAGE="https://github.com/ros2/rviz/blob/ros2/README.md"
SRC_URI="https://github.com/ros2-gbp/rviz-release/archive/release/crystal/${PN}/5.1.1-1.tar.gz -> ${PN}-crystal-release-${PV}.tar.gz"

LICENSE="BSD"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
IUSE="test"
RDEPEND="
	ros-crystal/geometry_msgs
	ros-crystal/laser_geometry
	ros-crystal/map_msgs
	ros-crystal/nav_msgs
	ros-crystal/pluginlib
	ros-crystal/rclcpp
	ros-crystal/resource_retriever
	ros-crystal/rviz_common
	ros-crystal/rviz_rendering
	ros-crystal/tinyxml_vendor
	ros-crystal/urdf
	ros-crystal/visualization_msgs
	test? ( ros-crystal/ament_cmake_cppcheck )
	test? ( ros-crystal/ament_cmake_cpplint )
	test? ( ros-crystal/ament_cmake_gmock )
	test? ( ros-crystal/ament_cmake_gtest )
	test? ( ros-crystal/ament_cmake_lint_cmake )
	test? ( ros-crystal/ament_cmake_uncrustify )
	test? ( ros-crystal/ament_index_cpp )
	test? ( ros-crystal/rviz_rendering_tests )
	test? ( ros-crystal/rviz_visual_testing_framework )
	dev-qt/qtcore:5
	dev-qt/qtgui:5
	dev-qt/qtopengl:5
	dev-qt/qtwidgets:5
"
DEPEND="${RDEPEND}
	ros-crystal/ament_cmake
	dev-qt/qtcore:5
	dev-qt/qtwidgets:5
	dev-qt/qttest:5
"

SLOT="0"
ROS_DISTRO="crystal"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
