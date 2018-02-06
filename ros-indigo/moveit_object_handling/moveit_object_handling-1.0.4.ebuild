# Copyright 2018 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{2_7,3_5} )

inherit ros-cmake

DESCRIPTION="Package which helps generate the MoveIt! moveit_msgs/CollisionObject\
	m[...]"
HOMEPAGE="https://wiki.ros.org"
SRC_URI="https://github.com/JenniferBuehler/moveit-pkgs-release/archive/release/indigo/${PN}/1.0.4-0.tar.gz -> ${PN}-indigo-release-${PV}.tar.gz"

LICENSE="GPL-3"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
RDEPEND="
	ros-indigo/convenience_ros_functions
	ros-indigo/eigen_conversions
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
