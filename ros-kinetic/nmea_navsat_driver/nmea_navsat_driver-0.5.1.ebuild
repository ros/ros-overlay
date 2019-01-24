# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{2_7,3_5,3_6} )

inherit ros-cmake

DESCRIPTION="Package to parse NMEA strings and publish a very simple GPS message. Does n[...]"
HOMEPAGE="http://ros.org/wiki/nmea_navsat_driver"
SRC_URI="https://github.com/ros-drivers-gbp/${PN}-release/archive/release/kinetic/${PN}/0.5.1-0.tar.gz -> ${PN}-kinetic-release-${PV}.tar.gz"

LICENSE="BSD"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
IUSE="test"
RDEPEND="
	ros-kinetic/geometry_msgs
	ros-kinetic/nmea_msgs
	ros-kinetic/rospy
	ros-kinetic/sensor_msgs
	test? ( ros-kinetic/roslint )
	dev-python/pyserial
"
DEPEND="${RDEPEND}
	ros-kinetic/catkin
"

SLOT="0"
ROS_DISTRO="kinetic"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
