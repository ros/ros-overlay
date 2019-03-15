# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{2_7,3_5,3_6} )

inherit ros-cmake

DESCRIPTION="A reverse ROS bridge for the MiR100 robot"
HOMEPAGE="https://github.com/dfki-ric/mir_robot"
SRC_URI="https://github.com/uos-gbp/mir_robot-release/archive/release/indigo/${PN}/1.0.3-0.tar.gz -> ${PN}-indigo-release-${PV}.tar.gz"

LICENSE="( BSD Apache-2.0 )"
KEYWORDS="~x86 ~amd64 ~arm ~arm64"
RDEPEND="
	ros-indigo/actionlib_msgs
	ros-indigo/diagnostic_msgs
	ros-indigo/dynamic_reconfigure
	ros-indigo/geometry_msgs
	ros-indigo/mir_actions
	ros-indigo/mir_description
	ros-indigo/mir_msgs
	ros-indigo/move_base_msgs
	ros-indigo/nav_msgs
	ros-indigo/robot_state_publisher
	ros-indigo/rosgraph_msgs
	ros-indigo/rospy
	ros-indigo/rospy_message_converter
	ros-indigo/sensor_msgs
	ros-indigo/std_msgs
	ros-indigo/tf
	ros-indigo/visualization_msgs
	dev-python/websocket-client
"
DEPEND="${RDEPEND}
	ros-indigo/catkin
	ros-indigo/roslaunch
"

SLOT="0"
ROS_DISTRO="indigo"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
