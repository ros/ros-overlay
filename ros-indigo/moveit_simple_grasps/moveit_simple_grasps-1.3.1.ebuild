# Copyright 2017 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{2_7,3_5} )

inherit ros-cmake

DESCRIPTION="'A basic grasp generator for simple objects such as blocks or cylinders for use w'"
HOMEPAGE="https://wiki.ros.org"
SRC_URI="https://github.com/davetcoleman/moveit_simple_grasps-release/archive/release/indigo/moveit_simple_grasps/1.3.1-0.tar.gz -> ${PN}-release-${PV}.tar.gz"

LICENSE="BSD"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
RDEPEND="
	ros-indigo/actionlib_msgs
	ros-indigo/geometry_msgs
	ros-indigo/message_runtime
	ros-indigo/moveit_msgs
	ros-indigo/moveit_visual_tools
	ros-indigo/std_msgs
	ros-indigo/trajectory_msgs
"
DEPEND="${RDEPEND}
	ros-indigo/actionlib
	ros-indigo/catkin
	ros-indigo/cmake_modules
	ros-indigo/eigen_conversions
	ros-indigo/message_generation
	ros-indigo/moveit_core
	ros-indigo/moveit_ros_planning
	ros-indigo/moveit_ros_planning_interface
	ros-indigo/roscpp
	ros-indigo/tf
	ros-indigo/tf_conversions
"

SLOT="0"
ROS_DISTRO="indigo"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"

