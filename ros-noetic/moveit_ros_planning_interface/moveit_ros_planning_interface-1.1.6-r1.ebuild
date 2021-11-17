# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=7
PYTHON_COMPAT=( python{3_8,3_9,3_10} )

inherit ros-cmake

DESCRIPTION="Components of MoveIt that offer simpler interfaces to planning and execution"
HOMEPAGE="http://moveit.ros.org"
SRC_URI="https://github.com/ros-gbp/moveit-release/archive/release/noetic/${PN}/1.1.6-1.tar.gz -> ${PN}-noetic-release-${PV}.tar.gz"

LICENSE="BSD"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
IUSE="test"
RDEPEND="
	ros-noetic/actionlib
	ros-noetic/eigenpy
	ros-noetic/geometry_msgs
	ros-noetic/moveit_msgs
	ros-noetic/moveit_ros_manipulation
	ros-noetic/moveit_ros_move_group
	ros-noetic/moveit_ros_planning
	ros-noetic/moveit_ros_warehouse
	ros-noetic/rosconsole
	ros-noetic/roscpp
	ros-noetic/rospy
	ros-noetic/tf2
	ros-noetic/tf2_eigen
	ros-noetic/tf2_geometry_msgs
	ros-noetic/tf2_ros
	test? ( ros-noetic/moveit_resources_fanuc_moveit_config )
	test? ( ros-noetic/moveit_resources_panda_moveit_config )
	test? ( ros-noetic/rostest )
	dev-lang/python
	dev-lang/python
"
DEPEND="${RDEPEND}
	ros-noetic/catkin
	dev-cpp/eigen
	dev-python/catkin_pkg
	dev-python/catkin_pkg
"

SLOT="0"
ROS_DISTRO="noetic"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
