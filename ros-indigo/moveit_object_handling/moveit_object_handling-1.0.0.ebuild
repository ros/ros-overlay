# Copyright 2017 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{2_7,3_5} )

inherit ros-cmake

DESCRIPTION="'Package which helps generate the MoveIt! moveit_msgs/CollisionObject
	message'"
HOMEPAGE="https://wiki.ros.org"
SRC_URI="https://github.com/JenniferBuehler/moveit-pkgs-release/archive/release/indigo/moveit_object_handling/1.0.0-0.tar.gz -> ${PN}-release-${PV}.tar.gz"

LICENSE="GPL-3"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
RDEPEND="
	ros-indigo/convenience_ros_functions
	ros-indigo/eigen_conversions
	ros-indigo/gazebo_state_plugins
	ros-indigo/gazebo_test_tools
	ros-indigo/geometry_msgs
	ros-indigo/moveit_msgs
	ros-indigo/object_msgs
	ros-indigo/roscpp
	ros-indigo/sensor_msgs
	ros-indigo/shape_msgs
	ros-indigo/shape_tools
	ros-indigo/std_msgs
"
DEPEND="${RDEPEND}
	ros-indigo/catkin
	ros-indigo/message_generation
"

SLOT="0"
ROS_DISTRO="indigo"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"

