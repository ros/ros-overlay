# Copyright 2017 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{2_7,3_5} )

inherit ros-cmake

DESCRIPTION="MoveIt! Configuration and ROS Interface for CARL"
HOMEPAGE="https://wiki.ros.org"
SRC_URI="https://github.com/gt-rail-release/carl_moveit-release/archive/release/indigo/carl_moveit/0.0.18-0.tar.gz -> ${PN}-release-${PV}.tar.gz"

LICENSE="BSD"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
RDEPEND="
	ros-indigo/actionlib
	ros-indigo/actionlib_msgs
	ros-indigo/carl_description
	ros-indigo/control_msgs
	ros-indigo/geometry_msgs
	ros-indigo/joint_state_publisher
	ros-indigo/message_runtime
	ros-indigo/moveit_planners_ompl
	ros-indigo/moveit_ros_move_group
	ros-indigo/moveit_ros_planning_interface
	ros-indigo/pcl_conversions
	ros-indigo/pcl_ros
	ros-indigo/rail_manipulation_msgs
	ros-indigo/robot_state_publisher
	ros-indigo/roscpp
	ros-indigo/sensor_msgs
	ros-indigo/std_msgs
	ros-indigo/std_srvs
	ros-indigo/wpi_jaco_msgs
	ros-indigo/xacro
"
DEPEND="${RDEPEND}
	ros-indigo/catkin
	ros-indigo/cmake_modules
	ros-indigo/message_generation
	ros-indigo/tf
"

SLOT="0"
ROS_DISTRO="indigo"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"

