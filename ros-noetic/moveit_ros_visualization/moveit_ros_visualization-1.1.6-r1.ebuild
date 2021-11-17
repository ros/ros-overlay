# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=7
PYTHON_COMPAT=( python{3_8,3_9,3_10} )

inherit ros-cmake

DESCRIPTION="Components of MoveIt that offer visualization"
HOMEPAGE="http://moveit.ros.org"
SRC_URI="https://github.com/ros-gbp/moveit-release/archive/release/noetic/${PN}/1.1.6-1.tar.gz -> ${PN}-noetic-release-${PV}.tar.gz"

LICENSE="BSD"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
IUSE="test"
RDEPEND="
	ros-noetic/geometric_shapes
	ros-noetic/interactive_markers
	ros-noetic/moveit_ros_perception
	ros-noetic/moveit_ros_planning_interface
	ros-noetic/moveit_ros_robot_interaction
	ros-noetic/moveit_ros_warehouse
	ros-noetic/object_recognition_msgs
	ros-noetic/pluginlib
	ros-noetic/rosconsole
	ros-noetic/roscpp
	ros-noetic/rospy
	ros-noetic/rviz
	ros-noetic/tf2_eigen
	test? ( ros-noetic/rostest )
"
DEPEND="${RDEPEND}
	ros-noetic/catkin
	ros-noetic/class_loader
	dev-cpp/eigen
	dev-games/ogre
	dev-qt/qtopengl:5
	virtual/pkgconfig
	dev-qt/qtcore:5
	dev-qt/qtwidgets:5
	dev-qt/qttest:5
"

SLOT="0"
ROS_DISTRO="noetic"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
