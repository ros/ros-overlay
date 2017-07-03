# Copyright 2017 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{2_7,3_5} )

inherit ros-cmake
DESCRIPTION="Helper functions for displaying and debugging MoveIt! data in Rviz via published"
HOMEPAGE="https://wiki.ros.org"
SRC_URI="https://github.com/davetcoleman/moveit_visual_tools-release/archive/release/lunar/moveit_visual_tools/3.3.0-0.tar.gz -> ${PN}-${PV}.tar.gz"

LICENSE="BSD"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
RDEPEND="
	ros-lunar/cmake_modules
	ros-lunar/eigen_conversions
	ros-lunar/geometry_msgs
	ros-lunar/graph_msgs
	ros-lunar/moveit_core
	ros-lunar/moveit_ros_robot_interaction
	ros-lunar/roscpp
	ros-lunar/roslint
	ros-lunar/rviz_visual_tools
	ros-lunar/std_msgs
	ros-lunar/tf_conversions
	ros-lunar/trajectory_msgs
	ros-lunar/visualization_msgs
"
DEPEND="${RDEPEND}
	ros-lunar/catkin
"

SLOT="lunar"
CMAKE_BUILD_TYPE=RelWithDebInfo
ROS_DISTRO="lunar"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"

