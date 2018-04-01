# Copyright 2018 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{2_7,3_5} )

inherit ros-cmake

DESCRIPTION="Package to parse NMEA strings and publish a very simple GPS message. Does n[...]"
HOMEPAGE="http://ros.org/wiki/nmea_navsat_driver"
SRC_URI="https://github.com/ros-drivers-gbp/${PN}-release/archive/release/melodic/${PN}/0.5.0-0.tar.gz -> ${PN}-melodic-release-${PV}.tar.gz"

LICENSE="BSD"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
RDEPEND="
	ros-melodic/geometry_msgs
	ros-melodic/nmea_msgs
	ros-melodic/rospy
	ros-melodic/sensor_msgs
	dev-python/pyserial
"
DEPEND="${RDEPEND}
	ros-melodic/catkin
	ros-melodic/roslint
"

SLOT="0"
ROS_DISTRO="melodic"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
