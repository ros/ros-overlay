# Copyright 2018 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{2_7,3_5,3_6} )

inherit ros-cmake

DESCRIPTION="Gazebo simulation package for the TurtleBot3"
HOMEPAGE="http://wiki.ros.org/turtlebot3_gazebo"
SRC_URI="https://github.com/ROBOTIS-GIT-release/turtlebot3_simulations-release/archive/release/melodic/${PN}/1.1.0-0.tar.gz -> ${PN}-melodic-release-${PV}.tar.gz"

LICENSE="Apache-2.0"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
RDEPEND="
	ros-melodic/gazebo_ros
	ros-melodic/geometry_msgs
	ros-melodic/nav_msgs
	ros-melodic/roscpp
	ros-melodic/sensor_msgs
	ros-melodic/std_msgs
	ros-melodic/tf
	sci-electronics/gazebo
"
DEPEND="${RDEPEND}
	ros-melodic/catkin
"

SLOT="0"
ROS_DISTRO="melodic"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
