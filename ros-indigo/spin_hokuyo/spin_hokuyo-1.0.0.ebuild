# Copyright 2017 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{2_7,3_5} )

inherit ros-cmake

DESCRIPTION="This package enables a 2D Hokuyo laser, connected to a Dynamixel servo motor, to"
HOMEPAGE="https://wiki.ros.org"
SRC_URI="https://github.com/RobustFieldAutonomyLab/spin_hokuyo-release/archive/release/indigo/spin_hokuyo/1.0.0-0.tar.gz -> ${PN}-release-${PV}.tar.gz"

LICENSE="GPL-1"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
RDEPEND="
	ros-indigo/actionlib
	ros-indigo/control_msgs
	ros-indigo/diagnostic_msgs
	ros-indigo/dynamixel_driver
	ros-indigo/dynamixel_msgs
	ros-indigo/roscpp
	ros-indigo/std_msgs
	ros-indigo/trajectory_msgs
"
DEPEND="${RDEPEND}
	ros-indigo/catkin
	ros-indigo/dynamixel_controllers
	ros-indigo/geometry_msgs
	ros-indigo/hokuyo_node
	ros-indigo/laser_assembler
	ros-indigo/laser_geometry
	ros-indigo/message_generation
	ros-indigo/pcl_conversions
	ros-indigo/pcl_ros
	ros-indigo/sensor_msgs
	ros-indigo/tf
	ros-indigo/visualization_msgs
"

SLOT="0"
ROS_DISTRO="indigo"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"

