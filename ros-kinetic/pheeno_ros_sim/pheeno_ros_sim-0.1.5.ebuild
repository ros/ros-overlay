# Copyright 2018 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{2_7,3_5} )

inherit ros-cmake

DESCRIPTION="Gazebo simulation ROS package for Pheeno system!"
HOMEPAGE="https://acslaboratory.github.io"
SRC_URI="https://github.com/ACSLaboratory/${PN}-release/archive/release/kinetic/${PN}/0.1.5-0.tar.gz -> ${PN}-kinetic-release-${PV}.tar.gz"

LICENSE="BSD"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
RDEPEND="
	ros-kinetic/actionlib
	ros-kinetic/actionlib_msgs
	ros-kinetic/gazebo_msgs
	ros-kinetic/gazebo_plugins
	ros-kinetic/gazebo_ros
	ros-kinetic/gazebo_ros_control
	ros-kinetic/geometry_msgs
	ros-kinetic/image_transport
	ros-kinetic/message_runtime
	ros-kinetic/nav_msgs
	ros-kinetic/roscpp
	ros-kinetic/rospy
	ros-kinetic/rviz
	ros-kinetic/sensor_msgs
	ros-kinetic/std_msgs
	ros-kinetic/tf
	ros-kinetic/urdf
	ros-kinetic/xacro
"
DEPEND="${RDEPEND}
	ros-kinetic/catkin
	ros-kinetic/message_generation
"

SLOT="0"
ROS_DISTRO="kinetic"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
