# Copyright 2018 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{2_7,3_5} )

inherit ros-cmake

DESCRIPTION="ROS driver for a generic Linux joystick.\
	The joy package contains joy_[...]"
HOMEPAGE="http://www.ros.org/wiki/joy"
SRC_URI="https://github.com/ros-gbp/${PN}stick_drivers-release/archive/release/indigo/${PN}/1.12.0-0.tar.gz -> ${PN}-indigo-release-${PV}.tar.gz"

LICENSE="BSD"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
IUSE="test"
RDEPEND="
	ros-indigo/diagnostic_updater
	ros-indigo/roscpp
	ros-indigo/sensor_msgs
	test? ( ros-indigo/rosbag )
	games-util/joystick
"
DEPEND="${RDEPEND}
	ros-indigo/catkin
"

SLOT="0"
ROS_DISTRO="indigo"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
