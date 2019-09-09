# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{3_5,3_6} )

inherit ament-cmake

DESCRIPTION="Several default plugins for rviz to cover the basic functionality."
HOMEPAGE="https://github.com/ros2/rviz/blob/ros2/README.md"
SRC_URI="https://github.com/ros2-gbp/rviz-release/archive/release/dashing/${PN}/6.1.4-1.tar.gz -> ${PN}-dashing-release-${PV}.tar.gz"

LICENSE="BSD"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
IUSE="test"
RDEPEND="
	ros-dashing/geometry_msgs
	ros-dashing/laser_geometry
	ros-dashing/map_msgs
	ros-dashing/nav_msgs
	ros-dashing/pluginlib
	ros-dashing/rclcpp
	ros-dashing/resource_retriever
	ros-dashing/rviz_common
	ros-dashing/rviz_rendering
	ros-dashing/tinyxml_vendor
	ros-dashing/urdf
	ros-dashing/visualization_msgs
	test? ( ros-dashing/ament_cmake_cppcheck )
	test? ( ros-dashing/ament_cmake_cpplint )
	test? ( ros-dashing/ament_cmake_gmock )
	test? ( ros-dashing/ament_cmake_gtest )
	test? ( ros-dashing/ament_cmake_lint_cmake )
	test? ( ros-dashing/ament_cmake_uncrustify )
	test? ( ros-dashing/ament_index_cpp )
	test? ( ros-dashing/rviz_rendering_tests )
	test? ( ros-dashing/rviz_visual_testing_framework )
	dev-qt/qtcore:5
	dev-qt/qtgui:5
	dev-qt/qtopengl:5
	dev-qt/qtwidgets:5
"
DEPEND="${RDEPEND}
	ros-dashing/ament_cmake
	dev-qt/qtcore:5
	dev-qt/qtwidgets:5
	dev-qt/qttest:5
"

SLOT="0"
ROS_DISTRO="dashing"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
