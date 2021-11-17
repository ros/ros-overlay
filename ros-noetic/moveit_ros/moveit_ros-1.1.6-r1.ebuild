# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=7
PYTHON_COMPAT=( python{3_8,3_9,3_10} )

inherit ros-cmake

DESCRIPTION="Components of MoveIt that use ROS"
HOMEPAGE="http://moveit.ros.org"
SRC_URI="https://github.com/ros-gbp/moveit-release/archive/release/noetic/${PN}/1.1.6-1.tar.gz -> ${PN}-noetic-release-${PV}.tar.gz"

LICENSE="BSD"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
RDEPEND="
	ros-noetic/moveit_ros_benchmarks
	ros-noetic/moveit_ros_manipulation
	ros-noetic/moveit_ros_move_group
	ros-noetic/moveit_ros_perception
	ros-noetic/moveit_ros_planning
	ros-noetic/moveit_ros_planning_interface
	ros-noetic/moveit_ros_robot_interaction
	ros-noetic/moveit_ros_visualization
	ros-noetic/moveit_ros_warehouse
"
DEPEND="${RDEPEND}
	ros-noetic/catkin
"

SLOT="0"
ROS_DISTRO="noetic"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
