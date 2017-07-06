# Copyright 2017 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{2_7,3_5} )

inherit ros-cmake

DESCRIPTION="'ROS driver to use the Kork NanoKontrol MIDI device as a joystick.'"
HOMEPAGE="http://ros.org/wiki/korg_nanokontrol"
SRC_URI="https://github.com/ros-gbp/korg_nanokontrol-release/archive/release/kinetic/korg_nanokontrol/0.1.2-0.tar.gz -> ${PN}-release-${PV}.tar.gz"

LICENSE="BSD"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
RDEPEND="
	ros-kinetic/rospy
	ros-kinetic/sensor_msgs
	dev-python/pygame
"
DEPEND="${RDEPEND}
	ros-kinetic/catkin
"

SLOT="0"
ROS_DISTRO="kinetic"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"

