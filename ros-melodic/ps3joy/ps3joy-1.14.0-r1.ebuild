# Copyright 2020 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{2_7,3_5,3_6} )

inherit ros-cmake

DESCRIPTION="Playstation 3 SIXAXIS or DUAL SHOCK 3 joystick driver.\
	Driver for the [...]"
HOMEPAGE="http://www.ros.org/wiki/ps3joy"
SRC_URI="https://github.com/ros-gbp/joystick_drivers-release/archive/release/melodic/${PN}/1.14.0-1.tar.gz -> ${PN}-melodic-release-${PV}.tar.gz"

LICENSE="BSD"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
RDEPEND="
	ros-melodic/diagnostic_msgs
	ros-melodic/rosgraph
	ros-melodic/rospy
	ros-melodic/sensor_msgs
	net-wireless/bluez
	games-util/joystick
	virtual/libusb
	dev-python/pybluez
"
DEPEND="${RDEPEND}
	ros-melodic/catkin
	ros-melodic/roslint
"

SLOT="0"
ROS_DISTRO="melodic"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
