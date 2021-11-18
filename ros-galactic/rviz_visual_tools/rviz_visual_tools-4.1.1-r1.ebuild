# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=7
PYTHON_COMPAT=( python{3_8,3_9,3_10} )

inherit ament-cmake

DESCRIPTION="Utility functions for displaying and debugging data in Rviz via published m[...]"
HOMEPAGE="https://github.com/PickNikRobotics/rviz_visual_tools"
SRC_URI="https://github.com/PickNikRobotics/${PN}-release/archive/release/galactic/${PN}/4.1.1-1.tar.gz -> ${PN}-galactic-release-${PV}.tar.gz"

LICENSE="BSD"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
IUSE="test"
RDEPEND="
	ros-galactic/ament_index_python
	ros-galactic/eigen_stl_containers
	ros-galactic/geometry_msgs
	ros-galactic/interactive_markers
	ros-galactic/launch
	ros-galactic/launch_ros
	ros-galactic/pluginlib
	ros-galactic/rclcpp
	ros-galactic/rclcpp_components
	ros-galactic/rviz2
	ros-galactic/rviz_ogre_vendor
	ros-galactic/sensor_msgs
	ros-galactic/shape_msgs
	ros-galactic/std_msgs
	ros-galactic/tf2
	ros-galactic/tf2_eigen
	ros-galactic/tf2_geometry_msgs
	ros-galactic/trajectory_msgs
	ros-galactic/visualization_msgs
	test? ( ros-galactic/ament_cmake_gtest )
	test? ( ros-galactic/ament_lint_auto )
	test? ( ros-galactic/ament_lint_common )
	dev-cpp/eigen
	dev-qt/qtwidgets:5
"
DEPEND="${RDEPEND}
	ros-galactic/ament_cmake
	ros-galactic/eigen3_cmake_module
	dev-qt/qtcore:5
	dev-qt/qtwidgets:5
	dev-qt/qttest:5
"

SLOT="0"
ROS_DISTRO="galactic"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
