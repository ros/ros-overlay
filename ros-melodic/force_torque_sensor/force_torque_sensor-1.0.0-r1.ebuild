# Copyright 2020 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{2_7,3_5,3_6} )

inherit ros-cmake

DESCRIPTION="The force_torque_sensor package"
HOMEPAGE="https://github.com/KITrobotics/force_torque_sensor"
SRC_URI="https://github.com/KITrobotics/${PN}-release/archive/release/melodic/${PN}/1.0.0-1.tar.gz -> ${PN}-melodic-release-${PV}.tar.gz"

LICENSE="LGPL-2"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
RDEPEND="
	ros-melodic/cmake_modules
	ros-melodic/dynamic_reconfigure
	ros-melodic/geometry_msgs
	ros-melodic/hardware_interface
	ros-melodic/iirob_filters
	ros-melodic/message_runtime
	ros-melodic/pluginlib
	ros-melodic/realtime_tools
	ros-melodic/roscpp
	ros-melodic/rosparam_handler
	ros-melodic/rospy
	ros-melodic/std_msgs
	ros-melodic/std_srvs
	ros-melodic/tf2
	ros-melodic/tf2_geometry_msgs
	ros-melodic/tf2_ros
"
DEPEND="${RDEPEND}
	ros-melodic/catkin
"

SLOT="0"
ROS_DISTRO="melodic"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
