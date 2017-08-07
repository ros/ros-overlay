# Copyright 2017 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{2_7,3_5} )

inherit ros-cmake

DESCRIPTION="Components of MoveIt that offer visualization"
HOMEPAGE="https://wiki.ros.org"
SRC_URI="https://github.com/ros-gbp/moveit-release/archive/release/indigo/moveit_ros_visualization/0.7.12-0.tar.gz -> ${PN}-release-${PV}.tar.gz"

LICENSE="BSD"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
RDEPEND="
	ros-indigo/geometric_shapes
	ros-indigo/interactive_markers
	ros-indigo/moveit_ros_perception
	ros-indigo/moveit_ros_planning_interface
	ros-indigo/moveit_ros_robot_interaction
	ros-indigo/moveit_ros_warehouse
	ros-indigo/object_recognition_msgs
	ros-indigo/pluginlib
	ros-indigo/roscpp
	ros-indigo/rospy
	ros-indigo/rviz
"
DEPEND="${RDEPEND}
	ros-indigo/catkin
	ros-indigo/cmake_modules
	virtual/pkgconfig
"

SLOT="0"
ROS_DISTRO="indigo"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"

