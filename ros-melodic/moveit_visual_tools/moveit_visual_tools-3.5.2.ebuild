# Copyright 2018 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{2_7,3_5,3_6} )

inherit ros-cmake

DESCRIPTION="Helper functions for displaying and debugging MoveIt! data in Rviz via publ[...]"
HOMEPAGE="https://github.com/ros-planning/moveit_visual_tools"
SRC_URI="https://github.com/ros-gbp/${PN}-release/archive/release/melodic/${PN}/3.5.2-0.tar.gz -> ${PN}-melodic-release-${PV}.tar.gz"

LICENSE="BSD"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
RDEPEND="
	ros-melodic/cmake_modules
	ros-melodic/geometry_msgs
	ros-melodic/graph_msgs
	ros-melodic/moveit_core
	ros-melodic/moveit_ros_planning
	ros-melodic/roscpp
	ros-melodic/roslint
	ros-melodic/rviz_visual_tools
	ros-melodic/std_msgs
	ros-melodic/tf2_eigen
	ros-melodic/tf2_ros
	ros-melodic/trajectory_msgs
	ros-melodic/visualization_msgs
"
DEPEND="${RDEPEND}
	ros-melodic/catkin
"

SLOT="0"
ROS_DISTRO="melodic"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
