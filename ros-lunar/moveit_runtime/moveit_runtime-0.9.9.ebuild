# Copyright 2017 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{2_7,3_5} )

inherit ros-cmake

DESCRIPTION="moveit_runtime meta package contains MoveIt! packages that are essential for its"
HOMEPAGE="https://wiki.ros.org"
SRC_URI="https://github.com/ros-gbp/moveit-release/archive/release/lunar/moveit_runtime/0.9.9-0.tar.gz -> ${PN}-release-${PV}.tar.gz"

LICENSE="BSD"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
RDEPEND="
	ros-lunar/moveit_core
	ros-lunar/moveit_planners
	ros-lunar/moveit_plugins
	ros-lunar/moveit_ros_manipulation
	ros-lunar/moveit_ros_move_group
	ros-lunar/moveit_ros_perception
	ros-lunar/moveit_ros_planning
	ros-lunar/moveit_ros_planning_interface
	ros-lunar/moveit_ros_warehouse
"
DEPEND="${RDEPEND}
	ros-lunar/catkin
"

SLOT="0"
ROS_DISTRO="lunar"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"

