# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{2_7,3_5,3_6} )

inherit ros-cmake

DESCRIPTION="Provides manipulator cartesian jogging."
HOMEPAGE="http://wiki.ros.org/jog_arm"
SRC_URI="https://github.com/UTNuclearRoboticsPublic/${PN}-release/archive/release/kinetic/${PN}/0.0.3-2.tar.gz -> ${PN}-kinetic-release-${PV}.tar.gz"

LICENSE="specified in-file"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
RDEPEND="
	ros-kinetic/cmake_modules
	ros-kinetic/geometry_msgs
	ros-kinetic/joy
	ros-kinetic/moveit_ros_manipulation
	ros-kinetic/moveit_ros_move_group
	ros-kinetic/moveit_ros_planning_interface
	ros-kinetic/roscpp
	ros-kinetic/rospy
	ros-kinetic/sensor_msgs
	ros-kinetic/tf
"
DEPEND="${RDEPEND}
	ros-kinetic/catkin
"

SLOT="0"
ROS_DISTRO="kinetic"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
