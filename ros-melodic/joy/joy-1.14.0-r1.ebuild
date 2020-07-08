# Copyright 2020 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{2_7,3_5,3_6} )

inherit ros-cmake

DESCRIPTION="ROS driver for a generic Linux joystick.\
	The joy package contains joy_[...]"
HOMEPAGE="http://www.ros.org/wiki/joy"
SRC_URI="https://github.com/ros-gbp/${PN}stick_drivers-release/archive/release/melodic/${PN}/1.14.0-1.tar.gz -> ${PN}-melodic-release-${PV}.tar.gz"

LICENSE="BSD"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
IUSE="test"
RDEPEND="
	ros-melodic/diagnostic_updater
	ros-melodic/roscpp
	ros-melodic/sensor_msgs
	test? ( ros-melodic/rosbag )
	games-util/joystick
"
DEPEND="${RDEPEND}
	ros-melodic/catkin
	ros-melodic/roslint
"

SLOT="0"
ROS_DISTRO="melodic"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
