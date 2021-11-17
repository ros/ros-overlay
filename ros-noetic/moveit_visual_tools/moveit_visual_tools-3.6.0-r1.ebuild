# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=7
PYTHON_COMPAT=( python{3_8,3_9,3_10} )

inherit ros-cmake

DESCRIPTION="Helper functions for displaying and debugging MoveIt data in Rviz via publi[...]"
HOMEPAGE="https://github.com/ros-planning/moveit_visual_tools"
SRC_URI="https://github.com/ros-gbp/${PN}-release/archive/release/noetic/${PN}/3.6.0-1.tar.gz -> ${PN}-noetic-release-${PV}.tar.gz"

LICENSE="BSD"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
RDEPEND="
	ros-noetic/cmake_modules
	ros-noetic/geometry_msgs
	ros-noetic/graph_msgs
	ros-noetic/moveit_core
	ros-noetic/moveit_ros_planning
	ros-noetic/roscpp
	ros-noetic/roslint
	ros-noetic/rviz_visual_tools
	ros-noetic/std_msgs
	ros-noetic/tf2_eigen
	ros-noetic/tf2_ros
	ros-noetic/trajectory_msgs
	ros-noetic/visualization_msgs
"
DEPEND="${RDEPEND}
	ros-noetic/catkin
"

SLOT="0"
ROS_DISTRO="noetic"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
