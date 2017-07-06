# Copyright 2017 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{2_7,3_5} )

inherit ros-cmake

DESCRIPTION="'Helper functions for displaying and debugging MoveIt! data in Rviz via published'"
HOMEPAGE="https://wiki.ros.org"
SRC_URI="https://github.com/davetcoleman/moveit_visual_tools-release/archive/release/kinetic/moveit_visual_tools/3.3.0-0.tar.gz -> ${PN}-release-${PV}.tar.gz"

LICENSE="BSD"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
RDEPEND="
	ros-kinetic/cmake_modules
	ros-kinetic/eigen_conversions
	ros-kinetic/geometry_msgs
	ros-kinetic/graph_msgs
	ros-kinetic/moveit_core
	ros-kinetic/moveit_ros_robot_interaction
	ros-kinetic/roscpp
	ros-kinetic/roslint
	ros-kinetic/rviz_visual_tools
	ros-kinetic/std_msgs
	ros-kinetic/tf_conversions
	ros-kinetic/trajectory_msgs
	ros-kinetic/visualization_msgs
"
DEPEND="${RDEPEND}
	ros-kinetic/catkin
"

SLOT="0"
ROS_DISTRO="kinetic"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"

