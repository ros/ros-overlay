# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{2_7,3_5,3_6} )

inherit ros-cmake

DESCRIPTION="A reverse ROS bridge for the MiR100 robot"
HOMEPAGE="https://github.com/dfki-ric/mir_robot"
SRC_URI="https://github.com/uos-gbp/mir_robot-release/archive/release/lunar/${PN}/1.0.3-0.tar.gz -> ${PN}-lunar-release-${PV}.tar.gz"

LICENSE="( BSD Apache-2.0 )"
KEYWORDS="~x86 ~amd64 ~arm ~arm64"
RDEPEND="
	ros-lunar/actionlib_msgs
	ros-lunar/diagnostic_msgs
	ros-lunar/dynamic_reconfigure
	ros-lunar/geometry_msgs
	ros-lunar/mir_actions
	ros-lunar/mir_description
	ros-lunar/mir_msgs
	ros-lunar/move_base_msgs
	ros-lunar/nav_msgs
	ros-lunar/robot_state_publisher
	ros-lunar/rosgraph_msgs
	ros-lunar/rospy
	ros-lunar/rospy_message_converter
	ros-lunar/sensor_msgs
	ros-lunar/std_msgs
	ros-lunar/tf
	ros-lunar/visualization_msgs
	dev-python/websocket-client
"
DEPEND="${RDEPEND}
	ros-lunar/catkin
	ros-lunar/roslaunch
"

SLOT="0"
ROS_DISTRO="lunar"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
