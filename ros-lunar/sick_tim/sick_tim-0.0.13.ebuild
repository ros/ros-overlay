# Copyright 2018 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{2_7,3_5} )

inherit ros-cmake

DESCRIPTION="A ROS driver for the SICK TiM and the SICK MRS 1000 laser scanners."
HOMEPAGE="http://wiki.ros.org/sick_tim"
SRC_URI="https://github.com/uos-gbp/${PN}-release/archive/release/lunar/${PN}/0.0.13-0.tar.gz -> ${PN}-lunar-release-${PV}.tar.gz"

LICENSE="BSD"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
RDEPEND="
	ros-lunar/diagnostic_updater
	ros-lunar/dynamic_reconfigure
	ros-lunar/robot_state_publisher
	ros-lunar/roscpp
	ros-lunar/sensor_msgs
	ros-lunar/xacro
	virtual/libusb:1
"
DEPEND="${RDEPEND}
	ros-lunar/catkin
	ros-lunar/roslaunch
	virtual/libusb:1
"

SLOT="0"
ROS_DISTRO="lunar"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
