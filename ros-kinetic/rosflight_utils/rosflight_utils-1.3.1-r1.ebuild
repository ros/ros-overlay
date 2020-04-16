# Copyright 2020 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{2_7,3_5,3_6} )

inherit ros-cmake

DESCRIPTION="Supporting utilities for ROSflight packages"
HOMEPAGE="http://rosflight.org"
SRC_URI="https://github.com/rosflight/rosflight-release/archive/release/kinetic/${PN}/1.3.1-1.tar.gz -> ${PN}-kinetic-release-${PV}.tar.gz"

LICENSE="BSD"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
RDEPEND="
	ros-kinetic/gazebo_msgs
	ros-kinetic/geometry_msgs
	ros-kinetic/rosbag
	ros-kinetic/roscpp
	ros-kinetic/rosflight
	ros-kinetic/rosflight_firmware
	ros-kinetic/rosflight_msgs
	ros-kinetic/rosflight_sim
	ros-kinetic/rosgraph_msgs
	ros-kinetic/rospy
	ros-kinetic/sensor_msgs
	ros-kinetic/std_srvs
	ros-kinetic/visualization_msgs
"
DEPEND="${RDEPEND}
	ros-kinetic/catkin
"

SLOT="0"
ROS_DISTRO="kinetic"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
