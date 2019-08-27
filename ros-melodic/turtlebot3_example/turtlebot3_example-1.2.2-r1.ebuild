# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{2_7,3_5,3_6} )

inherit ros-cmake

DESCRIPTION="This package provides four TurtleBot3 basic example include move using inte[...]"
HOMEPAGE="http://wiki.ros.org/turtlebot3_example"
SRC_URI="https://github.com/ROBOTIS-GIT-release/turtlebot3-release/archive/release/melodic/${PN}/1.2.2-1.tar.gz -> ${PN}-melodic-release-${PV}.tar.gz"

LICENSE="Apache-2.0"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
RDEPEND="
	ros-melodic/actionlib
	ros-melodic/actionlib_msgs
	ros-melodic/geometry_msgs
	ros-melodic/interactive_markers
	ros-melodic/message_runtime
	ros-melodic/nav_msgs
	ros-melodic/rospy
	ros-melodic/sensor_msgs
	ros-melodic/std_msgs
	ros-melodic/turtlebot3_bringup
	ros-melodic/turtlebot3_msgs
	ros-melodic/visualization_msgs
"
DEPEND="${RDEPEND}
	ros-melodic/catkin
	ros-melodic/message_generation
"

SLOT="0"
ROS_DISTRO="melodic"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
