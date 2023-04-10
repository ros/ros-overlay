# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{3_8,3_9,3_10} )

inherit ament-cmake

DESCRIPTION="Utility functions for displaying and debugging data in Rviz via published m[...]"
HOMEPAGE="https://github.com/PickNikRobotics/rviz_visual_tools"
SRC_URI="https://github.com/PickNikRobotics/${PN}-release/archive/release/foxy/${PN}/4.0.3-1.tar.gz -> ${PN}-foxy-release-${PV}.tar.gz"

LICENSE="BSD"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
IUSE="test"
RDEPEND="
	ros-foxy/ament_index_python
	ros-foxy/eigen_stl_containers
	ros-foxy/geometry_msgs
	ros-foxy/interactive_markers
	ros-foxy/launch
	ros-foxy/launch_ros
	ros-foxy/pluginlib
	ros-foxy/rclcpp
	ros-foxy/rclcpp_components
	ros-foxy/rviz2
	ros-foxy/rviz_common
	ros-foxy/rviz_default_plugins
	ros-foxy/rviz_ogre_vendor
	ros-foxy/rviz_rendering
	ros-foxy/sensor_msgs
	ros-foxy/shape_msgs
	ros-foxy/std_msgs
	ros-foxy/tf2
	ros-foxy/tf2_eigen
	ros-foxy/tf2_geometry_msgs
	ros-foxy/trajectory_msgs
	ros-foxy/visualization_msgs
	test? ( ros-foxy/ament_cmake_gtest )
	test? ( ros-foxy/ament_lint_auto )
	test? ( ros-foxy/ament_lint_common )
	dev-cpp/eigen
	dev-qt/qtwidgets:5
	dev-qt/qtx11extras:5
"
DEPEND="${RDEPEND}
	ros-foxy/ament_cmake
	ros-foxy/eigen3_cmake_module
	dev-qt/qtcore:5
	dev-qt/qtwidgets:5
	dev-qt/qttest:5
"

SLOT="0"
ROS_DISTRO="foxy"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
