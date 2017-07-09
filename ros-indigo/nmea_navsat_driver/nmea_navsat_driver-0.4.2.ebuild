# Copyright 2017 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{2_7,3_5} )

inherit ros-cmake

DESCRIPTION="'Package to parse NMEA strings and publish a very simple GPS message. Does not re'"
HOMEPAGE="http://ros.org/wiki/nmea_navsat_driver"
SRC_URI="https://github.com/ros-drivers-gbp/nmea_navsat_driver-release/archive/release/indigo/nmea_navsat_driver/0.4.2-0.tar.gz -> ${PN}-release-${PV}.tar.gz"

LICENSE="BSD"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
RDEPEND="
	ros-indigo/geometry_msgs
	ros-indigo/nmea_msgs
	ros-indigo/rospy
	ros-indigo/sensor_msgs
	dev-python/pyserial
"
DEPEND="${RDEPEND}
	ros-indigo/catkin
	ros-indigo/roslint
"

SLOT="0"
ROS_DISTRO="indigo"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"

