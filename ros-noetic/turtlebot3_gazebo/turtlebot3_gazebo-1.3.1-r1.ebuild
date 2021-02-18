# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{3_7,3_8} )

inherit ros-cmake

DESCRIPTION="Gazebo simulation package for the TurtleBot3"
HOMEPAGE="http://wiki.ros.org/turtlebot3_gazebo"
SRC_URI="https://github.com/ROBOTIS-GIT-release/turtlebot3_simulations-release/archive/release/noetic/${PN}/1.3.1-1.tar.gz -> ${PN}-noetic-release-${PV}.tar.gz"

LICENSE="Apache-2.0"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
RDEPEND="
	ros-noetic/gazebo_ros
	ros-noetic/geometry_msgs
	ros-noetic/nav_msgs
	ros-noetic/roscpp
	ros-noetic/sensor_msgs
	ros-noetic/std_msgs
	ros-noetic/tf
	ros-noetic/turtlebot3_description
	sci-electronics/gazebo
"
DEPEND="${RDEPEND}
	ros-noetic/catkin
"

SLOT="0"
ROS_DISTRO="noetic"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
