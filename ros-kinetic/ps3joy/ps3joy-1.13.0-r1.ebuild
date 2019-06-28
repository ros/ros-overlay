# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{2_7,3_5,3_6} )

inherit ros-cmake

DESCRIPTION="Playstation 3 SIXAXIS or DUAL SHOCK 3 joystick driver.\
	Driver for the [...]"
HOMEPAGE="http://www.ros.org/wiki/ps3joy"
SRC_URI="https://github.com/ros-gbp/joystick_drivers-release/archive/release/kinetic/${PN}/1.13.0-1.tar.gz -> ${PN}-kinetic-release-${PV}.tar.gz"

LICENSE="BSD"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
RDEPEND="
	ros-kinetic/diagnostic_msgs
	ros-kinetic/rosgraph
	ros-kinetic/rospy
	ros-kinetic/sensor_msgs
	net-wireless/bluez
	games-util/joystick
	virtual/libusb
	dev-python/pybluez
"
DEPEND="${RDEPEND}
	ros-kinetic/catkin
"

SLOT="0"
ROS_DISTRO="kinetic"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
