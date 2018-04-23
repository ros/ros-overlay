# Copyright 2018 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{2_7,3_5} )

inherit ros-cmake

DESCRIPTION="Package for TurtleBot3 automatic_parking which uses ar code. This example n[...]"
HOMEPAGE="http://wiki.ros.org/turtlebot3"
SRC_URI="https://github.com/ROBOTIS-GIT-release/turtlebot3_applications-release/archive/release/kinetic/${PN}/0.2.0-0.tar.gz -> ${PN}-kinetic-release-${PV}.tar.gz"

LICENSE="Apache-2.0"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
RDEPEND="
	ros-kinetic/ar_track_alvar
	ros-kinetic/ar_track_alvar_msgs
	ros-kinetic/geometry_msgs
	ros-kinetic/joint_state_publisher
	ros-kinetic/nav_msgs
	ros-kinetic/robot_state_publisher
	ros-kinetic/rospy
	ros-kinetic/rviz
	ros-kinetic/sensor_msgs
	ros-kinetic/std_msgs
	ros-kinetic/turtlebot3_bringup
"
DEPEND="${RDEPEND}
	ros-kinetic/catkin
"

SLOT="0"
ROS_DISTRO="kinetic"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
