# Copyright 2018 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{2_7,3_5} )

inherit ros-cmake

DESCRIPTION="Playstation 3 SIXAXIS or DUAL SHOCK 3 joystick driver.\
	Driver for the [...]"
HOMEPAGE="http://www.ros.org/wiki/ps3joy"
SRC_URI="https://github.com/ros-gbp/joystick_drivers-release/archive/release/indigo/${PN}/1.12.0-0.tar.gz -> ${PN}-indigo-release-${PV}.tar.gz"

LICENSE="BSD"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
RDEPEND="
	ros-indigo/diagnostic_msgs
	ros-indigo/rosgraph
	ros-indigo/rospy
	ros-indigo/sensor_msgs
	net-wireless/bluez
	games-util/joystick
	virtual/libusb
	dev-python/pybluez
"
DEPEND="${RDEPEND}
	ros-indigo/catkin
"

SLOT="0"
ROS_DISTRO="indigo"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
