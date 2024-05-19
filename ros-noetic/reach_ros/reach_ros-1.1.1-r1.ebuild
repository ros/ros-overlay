# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=7
PYTHON_COMPAT=( python{3_8,3_9,3_10} )

inherit ros-cmake

DESCRIPTION="The reach_ros package"
HOMEPAGE="https://wiki.ros.org"
SRC_URI="https://github.com/ros-industrial-release/${PN}-release/archive/release/noetic/${PN}/1.1.1-1.tar.gz -> ${PN}-noetic-release-${PV}.tar.gz"

LICENSE="Apache-2.0"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
IUSE="test"
RDEPEND="
	ros-noetic/interactive_markers
	ros-noetic/joint_state_publisher
	ros-noetic/moveit_core
	ros-noetic/moveit_msgs
	ros-noetic/moveit_ros_planning_interface
	ros-noetic/reach
	ros-noetic/robot_state_publisher
	ros-noetic/sensor_msgs
	ros-noetic/tf2_eigen
	ros-noetic/visualization_msgs
	ros-noetic/xacro
	test? ( ros-noetic/rostest )
"
DEPEND="${RDEPEND}
	ros-noetic/catkin
	ros-noetic/ros_industrial_cmake_boilerplate
"

SLOT="0"
ROS_DISTRO="noetic"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
