# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{2_7,3_5,3_6} )

inherit ros-cmake

DESCRIPTION="A ROS driver for the SICK TiM and the SICK MRS 1000 laser scanners."
HOMEPAGE="http://wiki.ros.org/sick_tim"
SRC_URI="https://github.com/uos-gbp/${PN}-release/archive/release/kinetic/${PN}/0.0.16-1.tar.gz -> ${PN}-kinetic-release-${PV}.tar.gz"

LICENSE="BSD"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
RDEPEND="
	ros-kinetic/diagnostic_updater
	ros-kinetic/dynamic_reconfigure
	ros-kinetic/robot_state_publisher
	ros-kinetic/roscpp
	ros-kinetic/sensor_msgs
	ros-kinetic/xacro
	virtual/libusb:1
	virtual/libusb:1
"
DEPEND="${RDEPEND}
	ros-kinetic/catkin
	ros-kinetic/roslaunch
"

SLOT="0"
ROS_DISTRO="kinetic"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
