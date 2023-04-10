# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=8
PYTHON_COMPAT=( python{3_8,3_9,3_10,3_11} )

inherit ament-cmake

DESCRIPTION="Several default plugins for rviz to cover the basic functionality."
HOMEPAGE="https://github.com/ros2/rviz/blob/ros2/README.md"
SRC_URI="https://github.com/ros2-gbp/rviz-release/archive/release/humble/${PN}/11.2.5-1.tar.gz -> ${PN}-humble-release-${PV}.tar.gz"

LICENSE="BSD"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
IUSE="test"
RDEPEND="
	ros-humble/geometry_msgs
	ros-humble/ignition_math6_vendor
	ros-humble/image_transport
	ros-humble/interactive_markers
	ros-humble/laser_geometry
	ros-humble/map_msgs
	ros-humble/nav_msgs
	ros-humble/pluginlib
	ros-humble/rclcpp
	ros-humble/resource_retriever
	ros-humble/rviz_common
	ros-humble/rviz_ogre_vendor
	ros-humble/rviz_rendering
	ros-humble/tf2
	ros-humble/tf2_geometry_msgs
	ros-humble/tf2_ros
	ros-humble/urdf
	ros-humble/visualization_msgs
	test? ( ros-humble/ament_cmake_cppcheck )
	test? ( ros-humble/ament_cmake_cpplint )
	test? ( ros-humble/ament_cmake_gmock )
	test? ( ros-humble/ament_cmake_gtest )
	test? ( ros-humble/ament_cmake_lint_cmake )
	test? ( ros-humble/ament_cmake_uncrustify )
	test? ( ros-humble/ament_cmake_xmllint )
	test? ( ros-humble/ament_index_cpp )
	test? ( ros-humble/ament_lint_auto )
	test? ( ros-humble/rviz_rendering_tests )
	test? ( ros-humble/rviz_visual_testing_framework )
	dev-qt/qtcore:5
	dev-qt/qtgui:5
	dev-qt/qtopengl:5
	dev-qt/qtwidgets:5
"
DEPEND="${RDEPEND}
	ros-humble/ament_cmake
	dev-qt/qtcore:5
	dev-qt/qtwidgets:5
	dev-qt/qttest:5
"

SLOT="0"
ROS_DISTRO="humble"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
