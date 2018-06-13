# Copyright 2018 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{2_7,3_5} )

inherit ros-cmake

DESCRIPTION="The wiimote package allows ROS nodes to communicate with a Nintendo Wiimote[...]"
HOMEPAGE="http://www.ros.org/wiki/wiimote"
SRC_URI="https://github.com/ros-gbp/joystick_drivers-release/archive/release/lunar/${PN}/1.12.0-0.tar.gz -> ${PN}-lunar-release-${PV}.tar.gz"

LICENSE="GPL-1"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
RDEPEND="
	ros-lunar/genmsg
	ros-lunar/geometry_msgs
	ros-lunar/roscpp
	ros-lunar/roslib
	ros-lunar/rospy
	ros-lunar/sensor_msgs
	ros-lunar/std_msgs
	ros-lunar/std_srvs
	app-misc/cwiid
	app-misc/cwiid[python]
	dev-python/numpy
"
DEPEND="${RDEPEND}
	ros-lunar/catkin
	ros-lunar/roslint
	app-misc/cwiid
"

SLOT="0"
ROS_DISTRO="lunar"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
