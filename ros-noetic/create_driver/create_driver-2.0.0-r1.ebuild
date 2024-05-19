# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=7
PYTHON_COMPAT=( python{3_8,3_9,3_10} )

inherit ros-cmake

DESCRIPTION="ROS driver for iRobot\'s Create and Roomba platforms, based on libcreate"
HOMEPAGE="http://wiki.ros.org/create_driver"
SRC_URI="https://github.com/autonomylab/create_autonomy-release/archive/release/noetic/${PN}/2.0.0-1.tar.gz -> ${PN}-noetic-release-${PV}.tar.gz"

LICENSE="BSD"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
RDEPEND="
	ros-noetic/create_msgs
	ros-noetic/diagnostic_msgs
	ros-noetic/diagnostic_updater
	ros-noetic/geometry_msgs
	ros-noetic/libcreate
	ros-noetic/nav_msgs
	ros-noetic/roscpp
	ros-noetic/sensor_msgs
	ros-noetic/std_msgs
	ros-noetic/tf2_geometry_msgs
	ros-noetic/tf2_ros
"
DEPEND="${RDEPEND}
	ros-noetic/catkin
	ros-noetic/roslint
"

SLOT="0"
ROS_DISTRO="noetic"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
