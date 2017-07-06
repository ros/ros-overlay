# Copyright 2017 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{2_7,3_5} )

inherit ros-cmake

DESCRIPTION="'Components of MoveIt that offer visualization'"
HOMEPAGE="https://wiki.ros.org"
SRC_URI="https://github.com/ros-gbp/moveit-release/archive/release/kinetic/moveit_ros_visualization/0.9.8-0.tar.gz -> ${PN}-release-${PV}.tar.gz"

LICENSE="BSD"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
RDEPEND="
	ros-kinetic/geometric_shapes
	ros-kinetic/interactive_markers
	ros-kinetic/moveit_ros_perception
	ros-kinetic/moveit_ros_planning_interface
	ros-kinetic/moveit_ros_robot_interaction
	ros-kinetic/moveit_ros_warehouse
	ros-kinetic/object_recognition_msgs
	ros-kinetic/pluginlib
	ros-kinetic/roscpp
	ros-kinetic/rospy
	ros-kinetic/rviz
"
DEPEND="${RDEPEND}
	ros-kinetic/catkin
	dev-cpp/eigen
	virtual/pkgconfig
"

SLOT="0"
ROS_DISTRO="kinetic"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"

