# Copyright 2018 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{2_7,3_5,3_6} )

inherit ros-cmake

DESCRIPTION="This package implements driver for ATI force torque sensors up to firmware [...]"
HOMEPAGE="http://ros.org/wiki/ati_force_torque"
SRC_URI="https://github.com/KITrobotics/${PN}-release/archive/release/kinetic/${PN}/1.0.1-1.tar.gz -> ${PN}-kinetic-release-${PV}.tar.gz"

LICENSE="LGPL-2"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
IUSE="test"
RDEPEND="
	ros-kinetic/cob_generic_can
	ros-kinetic/filters
	ros-kinetic/force_torque_sensor
	ros-kinetic/gazebo_ros
	ros-kinetic/geometry_msgs
	ros-kinetic/hardware_interface
	ros-kinetic/iirob_filters
	ros-kinetic/libmodbus
	ros-kinetic/message_runtime
	ros-kinetic/pluginlib
	ros-kinetic/realtime_tools
	ros-kinetic/robot_state_publisher
	ros-kinetic/roscpp
	ros-kinetic/roslaunch
	ros-kinetic/rosparam_handler
	ros-kinetic/rospy
	ros-kinetic/rostopic
	ros-kinetic/std_msgs
	ros-kinetic/std_srvs
	ros-kinetic/teleop_twist_joy
	ros-kinetic/tf2
	ros-kinetic/tf2_geometry_msgs
	ros-kinetic/tf2_ros
	ros-kinetic/trajectory_msgs
	ros-kinetic/visualization_msgs
	ros-kinetic/xacro
	test? ( ros-kinetic/roslaunch )
"
DEPEND="${RDEPEND}
	ros-kinetic/catkin
	ros-kinetic/cmake_modules
	ros-kinetic/message_generation
"

SLOT="0"
ROS_DISTRO="kinetic"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
