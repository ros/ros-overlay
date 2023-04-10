# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=8
PYTHON_COMPAT=( python{3_8,3_9,3_10,3_11} )

inherit ament-cmake

DESCRIPTION="Utility functions for displaying and debugging data in Rviz via published m[...]"
HOMEPAGE="https://github.com/PickNikRobotics/rviz_visual_tools"
SRC_URI="https://github.com/ros2-gbp/${PN}-release/archive/release/humble/${PN}/4.1.4-1.tar.gz -> ${PN}-humble-release-${PV}.tar.gz"

LICENSE="BSD"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
IUSE="test"
RDEPEND="
	ros-humble/ament_index_python
	ros-humble/eigen_stl_containers
	ros-humble/geometry_msgs
	ros-humble/interactive_markers
	ros-humble/launch
	ros-humble/launch_ros
	ros-humble/pluginlib
	ros-humble/rclcpp
	ros-humble/rclcpp_components
	ros-humble/rviz2
	ros-humble/rviz_common
	ros-humble/rviz_default_plugins
	ros-humble/rviz_ogre_vendor
	ros-humble/rviz_rendering
	ros-humble/sensor_msgs
	ros-humble/shape_msgs
	ros-humble/std_msgs
	ros-humble/tf2
	ros-humble/tf2_eigen
	ros-humble/tf2_geometry_msgs
	ros-humble/trajectory_msgs
	ros-humble/visualization_msgs
	test? ( ros-humble/ament_cmake_gtest )
	test? ( ros-humble/ament_lint_auto )
	test? ( ros-humble/ament_lint_common )
	dev-cpp/eigen
	dev-qt/qtwidgets:5
"
DEPEND="${RDEPEND}
	ros-humble/ament_cmake
	ros-humble/eigen3_cmake_module
	dev-qt/qtcore:5
	dev-qt/qtwidgets:5
	dev-qt/qttest:5
"

SLOT="0"
ROS_DISTRO="humble"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
