# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{2_7,3_5,3_6} )

inherit ros-cmake

DESCRIPTION="A ROS driver for the SICK TiM and the SICK MRS 1000 laser scanners."
HOMEPAGE="http://wiki.ros.org/sick_tim"
SRC_URI="https://github.com/uos-gbp/${PN}-release/archive/release/indigo/${PN}/0.0.15-0.tar.gz -> ${PN}-indigo-release-${PV}.tar.gz"

LICENSE="BSD"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
RDEPEND="
	ros-indigo/diagnostic_updater
	ros-indigo/dynamic_reconfigure
	ros-indigo/robot_state_publisher
	ros-indigo/roscpp
	ros-indigo/sensor_msgs
	ros-indigo/xacro
	virtual/libusb:1
	virtual/libusb:1
"
DEPEND="${RDEPEND}
	ros-indigo/catkin
	ros-indigo/roslaunch
"

SLOT="0"
ROS_DISTRO="indigo"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
