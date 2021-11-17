# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=7
PYTHON_COMPAT=( python{3_8,3_9,3_10} )

inherit ros-cmake

DESCRIPTION="ROS driver for a generic Linux joystick.\
	The joy package contains joy_[...]"
HOMEPAGE="http://www.ros.org/wiki/joy"
SRC_URI="https://github.com/ros-gbp/${PN}stick_drivers-release/archive/release/noetic/${PN}/1.15.1-1.tar.gz -> ${PN}-noetic-release-${PV}.tar.gz"

LICENSE="BSD"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
IUSE="test"
RDEPEND="
	ros-noetic/diagnostic_updater
	ros-noetic/roscpp
	ros-noetic/sensor_msgs
	test? ( ros-noetic/rosbag )
	games-util/joystick
"
DEPEND="${RDEPEND}
	ros-noetic/catkin
	ros-noetic/roslint
"

SLOT="0"
ROS_DISTRO="noetic"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
