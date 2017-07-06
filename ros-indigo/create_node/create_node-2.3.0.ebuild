# Copyright 2017 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{2_7,3_5} )

inherit ros-cmake

DESCRIPTION="'iRobot Create ROS driver node
	
	ROS bindings for the Create/Roomba driver'"
HOMEPAGE="https://wiki.ros.org"
SRC_URI="https://github.com/turtlebot-release/turtlebot_create-release/archive/release/indigo/create_node/2.3.0-0.tar.gz -> ${PN}-release-${PV}.tar.gz"

LICENSE="BSD"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
RDEPEND="
	ros-indigo/create_driver
	ros-indigo/diagnostic_msgs
	ros-indigo/dynamic_reconfigure
	ros-indigo/geometry_msgs
	ros-indigo/message_runtime
	ros-indigo/nav_msgs
	ros-indigo/python_orocos_kdl
	ros-indigo/rospy
	ros-indigo/tf
"
DEPEND="${RDEPEND}
	ros-indigo/catkin
	ros-indigo/message_generation
"

SLOT="0"
ROS_DISTRO="indigo"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"

