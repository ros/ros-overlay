# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=7
PYTHON_COMPAT=( python{3_8,3_9,3_10} )

inherit ament-cmake

DESCRIPTION="Helper functions for displaying and debugging MoveIt data in Rviz via publi[...]"
HOMEPAGE="https://github.com/ros-planning/moveit_visual_tools"
SRC_URI="https://github.com/moveit/${PN}-release/archive/release/galactic/${PN}/4.0.0-1.tar.gz -> ${PN}-galactic-release-${PV}.tar.gz"

LICENSE="BSD"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
RDEPEND="
	ros-galactic/geometry_msgs
	ros-galactic/graph_msgs
	ros-galactic/moveit_common
	ros-galactic/moveit_core
	ros-galactic/moveit_ros_planning
	ros-galactic/rclcpp
	ros-galactic/rviz_visual_tools
	ros-galactic/std_msgs
	ros-galactic/tf2_eigen
	ros-galactic/tf2_ros
	ros-galactic/trajectory_msgs
	ros-galactic/visualization_msgs
"
DEPEND="${RDEPEND}
	ros-galactic/ament_cmake
"

SLOT="0"
ROS_DISTRO="galactic"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
