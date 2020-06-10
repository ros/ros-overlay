# Copyright 2020 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{2_7,3_5,3_6} )

inherit ros-cmake

DESCRIPTION="A ROS driver for the SICK TiM and the SICK MRS 1000 laser scanners."
HOMEPAGE="http://wiki.ros.org/sick_tim"
SRC_URI="https://github.com/uos-gbp/${PN}-release/archive/release/melodic/${PN}/0.0.17-1.tar.gz -> ${PN}-melodic-release-${PV}.tar.gz"

LICENSE="BSD"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
RDEPEND="
	ros-melodic/diagnostic_updater
	ros-melodic/dynamic_reconfigure
	ros-melodic/robot_state_publisher
	ros-melodic/roscpp
	ros-melodic/sensor_msgs
	ros-melodic/xacro
	virtual/libusb:1
	virtual/libusb:1
"
DEPEND="${RDEPEND}
	ros-melodic/catkin
	ros-melodic/roslaunch
"

SLOT="0"
ROS_DISTRO="melodic"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
