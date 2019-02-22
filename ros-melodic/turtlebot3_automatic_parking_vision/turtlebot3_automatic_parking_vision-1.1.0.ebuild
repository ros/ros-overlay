# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{2_7,3_5,3_6} )

inherit ros-cmake

DESCRIPTION="Package for TurtleBot3 automatic_parking which uses ar code. This example n[...]"
HOMEPAGE="http://wiki.ros.org/turtlebot3_automatic_parking_vision"
SRC_URI="https://github.com/ROBOTIS-GIT-release/turtlebot3_applications-release/archive/release/melodic/${PN}/1.1.0-0.tar.gz -> ${PN}-melodic-release-${PV}.tar.gz"

LICENSE="Apache-2.0"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
RDEPEND="
	ros-melodic/ar_track_alvar
	ros-melodic/ar_track_alvar_msgs
	ros-melodic/geometry_msgs
	ros-melodic/joint_state_publisher
	ros-melodic/nav_msgs
	ros-melodic/robot_state_publisher
	ros-melodic/rospy
	ros-melodic/rviz
	ros-melodic/sensor_msgs
	ros-melodic/std_msgs
	ros-melodic/turtlebot3_bringup
"
DEPEND="${RDEPEND}
	ros-melodic/catkin
"

SLOT="0"
ROS_DISTRO="melodic"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
