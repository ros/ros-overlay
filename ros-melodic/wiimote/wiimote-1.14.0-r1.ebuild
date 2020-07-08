# Copyright 2020 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{2_7,3_5,3_6} )

inherit ros-cmake

DESCRIPTION="The wiimote package allows ROS nodes to communicate with a Nintendo Wiimote[...]"
HOMEPAGE="http://www.ros.org/wiki/wiimote"
SRC_URI="https://github.com/ros-gbp/joystick_drivers-release/archive/release/melodic/${PN}/1.14.0-1.tar.gz -> ${PN}-melodic-release-${PV}.tar.gz"

LICENSE="GPL-1"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
RDEPEND="
	ros-melodic/geometry_msgs
	ros-melodic/message_runtime
	ros-melodic/roscpp
	ros-melodic/roslib
	ros-melodic/rospy
	ros-melodic/sensor_msgs
	ros-melodic/std_msgs
	ros-melodic/std_srvs
	app-misc/cwiid
	app-misc/cwiid[python]
	dev-python/numpy
"
DEPEND="${RDEPEND}
	ros-melodic/catkin
	ros-melodic/message_generation
	ros-melodic/roslint
	app-misc/cwiid
"

SLOT="0"
ROS_DISTRO="melodic"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
