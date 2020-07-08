# Copyright 2020 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{2_7,3_5,3_6} )

inherit ros-cmake

DESCRIPTION="A reverse ROS bridge for the MiR100 robot"
HOMEPAGE="https://github.com/dfki-ric/mir_robot"
SRC_URI="https://github.com/uos-gbp/mir_robot-release/archive/release/melodic/${PN}/1.0.6-1.tar.gz -> ${PN}-melodic-release-${PV}.tar.gz"

LICENSE="( BSD Apache-2.0 )"
KEYWORDS="~x86 ~amd64 ~arm ~arm64"
RDEPEND="
	ros-melodic/actionlib_msgs
	ros-melodic/diagnostic_msgs
	ros-melodic/dynamic_reconfigure
	ros-melodic/geometry_msgs
	ros-melodic/mir_actions
	ros-melodic/mir_description
	ros-melodic/mir_msgs
	ros-melodic/move_base_msgs
	ros-melodic/nav_msgs
	ros-melodic/robot_state_publisher
	ros-melodic/rosgraph_msgs
	ros-melodic/rospy
	ros-melodic/rospy_message_converter
	ros-melodic/sensor_msgs
	ros-melodic/std_msgs
	ros-melodic/tf
	ros-melodic/visualization_msgs
	dev-python/websocket-client
"
DEPEND="${RDEPEND}
	ros-melodic/catkin
	ros-melodic/roslaunch
"

SLOT="0"
ROS_DISTRO="melodic"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
