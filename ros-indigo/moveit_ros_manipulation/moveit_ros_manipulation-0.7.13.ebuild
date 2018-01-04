# Copyright 2017 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{2_7,3_5} )

inherit ros-cmake

DESCRIPTION="Components of MoveIt used for manipulation"
HOMEPAGE="https://wiki.ros.org"
SRC_URI="https://github.com/ros-gbp/moveit-release/archive/release/indigo/${PN}/0.7.13-0.tar.gz -> ${PN}-indigo-release-${PV}.tar.gz"

LICENSE="BSD"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
RDEPEND="
	ros-indigo/actionlib
	ros-indigo/dynamic_reconfigure
	ros-indigo/household_objects_database_msgs
	ros-indigo/manipulation_msgs
	ros-indigo/moveit_core
	ros-indigo/moveit_msgs
	ros-indigo/moveit_ros_move_group
	ros-indigo/moveit_ros_planning
	ros-indigo/pluginlib
	ros-indigo/rosconsole
	ros-indigo/roscpp
	ros-indigo/tf
"
DEPEND="${RDEPEND}
	ros-indigo/catkin
	ros-indigo/cmake_modules
"

SLOT="0"
ROS_DISTRO="indigo"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
