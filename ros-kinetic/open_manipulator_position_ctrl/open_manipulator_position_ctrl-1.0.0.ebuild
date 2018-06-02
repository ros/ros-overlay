# Copyright 2018 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{2_7,3_5} )

inherit ros-cmake

DESCRIPTION="This packages based on MoveIt! framework to manipulate OpenManipulator"
HOMEPAGE="http://wiki.ros.org/open_manipulator_position_ctrl"
SRC_URI="https://github.com/ROBOTIS-GIT-release/open_manipulator-release/archive/release/kinetic/${PN}/1.0.0-0.tar.gz -> ${PN}-kinetic-release-${PV}.tar.gz"

LICENSE="Apache-2.0"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
RDEPEND="
	ros-kinetic/geometry_msgs
	ros-kinetic/moveit_core
	ros-kinetic/moveit_msgs
	ros-kinetic/moveit_ros_planning
	ros-kinetic/moveit_ros_planning_interface
	ros-kinetic/open_manipulator_msgs
	ros-kinetic/roscpp
	ros-kinetic/sensor_msgs
	ros-kinetic/std_msgs
	dev-cpp/eigen
"
DEPEND="${RDEPEND}
	ros-kinetic/catkin
"

SLOT="0"
ROS_DISTRO="kinetic"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
