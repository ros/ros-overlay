# Copyright 2017 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{2_7,3_5} )

inherit ros-cmake

DESCRIPTION="A ROS driver for the SICK TiM series of laser scanners."
HOMEPAGE="https://wiki.ros.org"
SRC_URI="https://github.com/uos-gbp/sick_tim-release/archive/release/lunar/sick_tim/0.0.10-0.tar.gz -> ${PN}-release-${PV}.tar.gz"

LICENSE="BSD"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
RDEPEND="
	ros-lunar/diagnostic_updater
	ros-lunar/dynamic_reconfigure
	ros-lunar/roscpp
	ros-lunar/sensor_msgs
	virtual/libusb:1
"
DEPEND="${RDEPEND}
	ros-lunar/catkin
	virtual/libusb:1
"

SLOT="0"
ROS_DISTRO="lunar"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"

