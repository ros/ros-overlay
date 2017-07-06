# Copyright 2017 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{2_7,3_5} )

inherit ros-cmake

DESCRIPTION="'Helper functions for displaying and debugging MoveIt! data in Rviz via published'"
HOMEPAGE="https://wiki.ros.org"
SRC_URI="https://github.com/davetcoleman/moveit_visual_tools-release/archive/release/indigo/moveit_visual_tools/3.0.4-1.tar.gz -> ${PN}-release-${PV}.tar.gz"

LICENSE="BSD"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
RDEPEND="
	ros-indigo/geometry_msgs
	ros-indigo/graph_msgs
	ros-indigo/moveit_core
	ros-indigo/moveit_msgs
	ros-indigo/moveit_ros_robot_interaction
	ros-indigo/rviz_visual_tools
	ros-indigo/std_msgs
	ros-indigo/trajectory_msgs
	ros-indigo/visualization_msgs
"
DEPEND="${RDEPEND}
	ros-indigo/catkin
	ros-indigo/cmake_modules
	ros-indigo/eigen_conversions
	ros-indigo/roscpp
	ros-indigo/tf_conversions
"

SLOT="0"
ROS_DISTRO="indigo"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"

