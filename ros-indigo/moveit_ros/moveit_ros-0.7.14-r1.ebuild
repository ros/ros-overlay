# Copyright 2018 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{2_7,3_5,3_6} )

inherit ros-cmake

DESCRIPTION="Components of MoveIt that use ROS"
HOMEPAGE="http://moveit.ros.org"
SRC_URI="https://github.com/ros-gbp/moveit-release/archive/release/indigo/${PN}/0.7.14-1.tar.gz -> ${PN}-indigo-release-${PV}.tar.gz"

LICENSE="BSD"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
RDEPEND="
	ros-indigo/moveit_ros_benchmarks
	ros-indigo/moveit_ros_benchmarks_gui
	ros-indigo/moveit_ros_manipulation
	ros-indigo/moveit_ros_move_group
	ros-indigo/moveit_ros_perception
	ros-indigo/moveit_ros_planning
	ros-indigo/moveit_ros_planning_interface
	ros-indigo/moveit_ros_robot_interaction
	ros-indigo/moveit_ros_visualization
	ros-indigo/moveit_ros_warehouse
"
DEPEND="${RDEPEND}
	ros-indigo/catkin
"

SLOT="0"
ROS_DISTRO="indigo"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
