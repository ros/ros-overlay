# Copyright 2018 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{2_7,3_5,3_6} )

inherit ros-cmake

DESCRIPTION="moveit_runtime meta package contains MoveIt! packages that are essential fo[...]"
HOMEPAGE="http://moveit.ros.org"
SRC_URI="https://github.com/ros-gbp/moveit-release/archive/release/kinetic/${PN}/0.9.15-0.tar.gz -> ${PN}-kinetic-release-${PV}.tar.gz"

LICENSE="BSD"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
RDEPEND="
	ros-kinetic/moveit_core
	ros-kinetic/moveit_planners
	ros-kinetic/moveit_plugins
	ros-kinetic/moveit_ros_manipulation
	ros-kinetic/moveit_ros_move_group
	ros-kinetic/moveit_ros_perception
	ros-kinetic/moveit_ros_planning
	ros-kinetic/moveit_ros_planning_interface
	ros-kinetic/moveit_ros_warehouse
"
DEPEND="${RDEPEND}
	ros-kinetic/catkin
"

SLOT="0"
ROS_DISTRO="kinetic"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
