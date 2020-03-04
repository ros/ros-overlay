# Copyright 2020 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{2_7,3_5,3_6} )

inherit ros-cmake

DESCRIPTION="This package implements driver for ATI force torque sensors up to firmware [...]"
HOMEPAGE="http://ros.org/wiki/ati_force_torque"
SRC_URI="https://github.com/KITrobotics/${PN}-release/archive/release/melodic/${PN}/1.1.1-3.tar.gz -> ${PN}-melodic-release-${PV}.tar.gz"

LICENSE="LGPL-2"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
IUSE="test"
RDEPEND="
	ros-melodic/cob_generic_can
	ros-melodic/filters
	ros-melodic/force_torque_sensor
	ros-melodic/gazebo_ros
	ros-melodic/geometry_msgs
	ros-melodic/hardware_interface
	ros-melodic/iirob_filters
	ros-melodic/libmodbus
	ros-melodic/message_runtime
	ros-melodic/pluginlib
	ros-melodic/realtime_tools
	ros-melodic/robot_state_publisher
	ros-melodic/roscpp
	ros-melodic/roslaunch
	ros-melodic/rosparam_handler
	ros-melodic/rospy
	ros-melodic/rostopic
	ros-melodic/std_msgs
	ros-melodic/std_srvs
	ros-melodic/teleop_twist_joy
	ros-melodic/tf2
	ros-melodic/tf2_geometry_msgs
	ros-melodic/tf2_ros
	ros-melodic/trajectory_msgs
	ros-melodic/visualization_msgs
	ros-melodic/xacro
	test? ( ros-melodic/roslaunch )
"
DEPEND="${RDEPEND}
	ros-melodic/catkin
	ros-melodic/cmake_modules
	ros-melodic/message_generation
"

SLOT="0"
ROS_DISTRO="melodic"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
