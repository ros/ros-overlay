# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{2_7,3_5,3_6} )

inherit ros-cmake

DESCRIPTION="The wiimote package allows ROS nodes to communicate with a Nintendo Wiimote[...]"
HOMEPAGE="http://www.ros.org/wiki/wiimote"
SRC_URI="https://github.com/ros-gbp/joystick_drivers-release/archive/release/kinetic/${PN}/1.13.0-1.tar.gz -> ${PN}-kinetic-release-${PV}.tar.gz"

LICENSE="GPL-1"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
RDEPEND="
	ros-kinetic/genmsg
	ros-kinetic/geometry_msgs
	ros-kinetic/roscpp
	ros-kinetic/roslib
	ros-kinetic/rospy
	ros-kinetic/sensor_msgs
	ros-kinetic/std_msgs
	ros-kinetic/std_srvs
	app-misc/cwiid
	app-misc/cwiid[python]
	dev-python/numpy
"
DEPEND="${RDEPEND}
	ros-kinetic/catkin
	ros-kinetic/roslint
	app-misc/cwiid
"

SLOT="0"
ROS_DISTRO="kinetic"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
