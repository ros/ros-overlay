# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{2_7,3_5,3_6} )

inherit ros-cmake

DESCRIPTION="This package provides four TurtleBot3 basic example include move using inte[...]"
HOMEPAGE="http://wiki.ros.org/turtlebot3_example"
SRC_URI="https://github.com/ROBOTIS-GIT-release/turtlebot3-release/archive/release/kinetic/${PN}/1.2.1-1.tar.gz -> ${PN}-kinetic-release-${PV}.tar.gz"

LICENSE="Apache-2.0"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
RDEPEND="
	ros-kinetic/actionlib
	ros-kinetic/actionlib_msgs
	ros-kinetic/geometry_msgs
	ros-kinetic/interactive_markers
	ros-kinetic/message_runtime
	ros-kinetic/nav_msgs
	ros-kinetic/rospy
	ros-kinetic/sensor_msgs
	ros-kinetic/std_msgs
	ros-kinetic/turtlebot3_bringup
	ros-kinetic/turtlebot3_msgs
	ros-kinetic/visualization_msgs
"
DEPEND="${RDEPEND}
	ros-kinetic/catkin
	ros-kinetic/message_generation
"

SLOT="0"
ROS_DISTRO="kinetic"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
