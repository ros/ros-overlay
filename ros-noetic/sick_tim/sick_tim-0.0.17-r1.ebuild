# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=7
PYTHON_COMPAT=( python{3_8,3_9,3_10} )

inherit ros-cmake

DESCRIPTION="A ROS driver for the SICK TiM and the SICK MRS 1000 laser scanners."
HOMEPAGE="http://wiki.ros.org/sick_tim"
SRC_URI="https://github.com/uos-gbp/${PN}-release/archive/release/noetic/${PN}/0.0.17-1.tar.gz -> ${PN}-noetic-release-${PV}.tar.gz"

LICENSE="BSD"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
RDEPEND="
	ros-noetic/diagnostic_updater
	ros-noetic/dynamic_reconfigure
	ros-noetic/robot_state_publisher
	ros-noetic/roscpp
	ros-noetic/sensor_msgs
	ros-noetic/xacro
	virtual/libusb:1
	virtual/libusb:1
"
DEPEND="${RDEPEND}
	ros-noetic/catkin
	ros-noetic/roslaunch
"

SLOT="0"
ROS_DISTRO="noetic"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
