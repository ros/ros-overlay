# Copyright 2017 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{2_7,3_5} )

inherit ros-cmake

DESCRIPTION="Interaction with objects using MoveIt"
HOMEPAGE="https://wiki.ros.org"
SRC_URI="https://github.com/ros-aldebaran/romeo_moveit_actions-release/archive/release/indigo/romeo_moveit_actions/0.0.7-2.tar.gz -> ${PN}-release-${PV}.tar.gz"

LICENSE="BSD"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
RDEPEND="
	ros-indigo/actionlib
	ros-indigo/geometric_shapes
	ros-indigo/geometry_msgs
	ros-indigo/moveit_core
	ros-indigo/moveit_planners
	ros-indigo/moveit_planners_ompl
	ros-indigo/moveit_plugins
	ros-indigo/moveit_ros
	ros-indigo/moveit_ros_planning
	ros-indigo/moveit_ros_planning_interface
	ros-indigo/moveit_ros_visualization
	ros-indigo/moveit_simple_controller_manager
	ros-indigo/moveit_simple_grasps
	ros-indigo/object_recognition_msgs
	ros-indigo/roscpp
	ros-indigo/std_msgs
"
DEPEND="${RDEPEND}
	ros-indigo/catkin
	ros-indigo/cmake_modules
	ros-indigo/moveit_visual_tools
"

SLOT="0"
ROS_DISTRO="indigo"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"

