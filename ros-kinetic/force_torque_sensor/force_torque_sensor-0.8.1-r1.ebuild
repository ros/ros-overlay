# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{2_7,3_5,3_6} )

inherit ros-cmake

DESCRIPTION="The force_torque_sensor package"
HOMEPAGE="https://github.com/KITrobotics/force_torque_sensor"
SRC_URI="https://github.com/KITrobotics/${PN}-release/archive/release/kinetic/${PN}/0.8.1-1.tar.gz -> ${PN}-kinetic-release-${PV}.tar.gz"

LICENSE="LGPL-2"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
RDEPEND="
	ros-kinetic/cmake_modules
	ros-kinetic/dynamic_reconfigure
	ros-kinetic/geometry_msgs
	ros-kinetic/hardware_interface
	ros-kinetic/iirob_filters
	ros-kinetic/message_runtime
	ros-kinetic/pluginlib
	ros-kinetic/realtime_tools
	ros-kinetic/roscpp
	ros-kinetic/rosparam_handler
	ros-kinetic/rospy
	ros-kinetic/std_msgs
	ros-kinetic/std_srvs
	ros-kinetic/tf2
	ros-kinetic/tf2_geometry_msgs
	ros-kinetic/tf2_ros
"
DEPEND="${RDEPEND}
	ros-kinetic/catkin
"

SLOT="0"
ROS_DISTRO="kinetic"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
