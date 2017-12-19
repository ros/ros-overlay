# Copyright 2017 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{2_7,3_5} )

inherit ros-cmake

DESCRIPTION="Components of MoveIt that offer visualization"
HOMEPAGE="https://wiki.ros.org"
SRC_URI="https://github.com/ros-gbp/moveit-release/archive/release/lunar/${PN}/0.9.10-0.tar.gz -> ${PN}-lunar-release-${PV}.tar.gz"

LICENSE="BSD"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
RDEPEND="
	ros-lunar/geometric_shapes
	ros-lunar/interactive_markers
	ros-lunar/moveit_ros_perception
	ros-lunar/moveit_ros_planning_interface
	ros-lunar/moveit_ros_robot_interaction
	ros-lunar/moveit_ros_warehouse
	ros-lunar/object_recognition_msgs
	ros-lunar/pluginlib
	ros-lunar/roscpp
	ros-lunar/rospy
	ros-lunar/rviz
"
DEPEND="${RDEPEND}
	ros-lunar/catkin
	dev-cpp/eigen
	virtual/pkgconfig
"

SLOT="0"
ROS_DISTRO="lunar"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
