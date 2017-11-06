# Copyright 2017 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{2_7,3_5} )

inherit ros-cmake

DESCRIPTION="moveit_runtime meta package contains MoveIt! packages that are essential fo[...]"
HOMEPAGE="https://wiki.ros.org"
SRC_URI="https://github.com/ros-gbp/moveit-release/archive/release/indigo/moveit_runtime/0.7.12-0.tar.gz -> ${PN}-indigo-release-${PV}.tar.gz"

LICENSE="BSD"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
RDEPEND="
	ros-indigo/moveit_core
	ros-indigo/moveit_planners
	ros-indigo/moveit_plugins
	ros-indigo/moveit_ros_manipulation
	ros-indigo/moveit_ros_move_group
	ros-indigo/moveit_ros_perception
	ros-indigo/moveit_ros_planning
	ros-indigo/moveit_ros_planning_interface
	ros-indigo/moveit_ros_warehouse
"
DEPEND="${RDEPEND}
	ros-indigo/catkin
"

SLOT="0"
ROS_DISTRO="indigo"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
