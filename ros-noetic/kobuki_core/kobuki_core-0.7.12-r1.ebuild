# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{2_7,3_5,3_6} )

inherit ros-cmake

DESCRIPTION="Non-ROS software for Kobuki, Yujin Robot\'s mobile research base."
HOMEPAGE="http://ros.org/wiki/kobuki_core"
SRC_URI="https://github.com/yujinrobot-release/${PN}-release/archive/release/noetic/${PN}/0.7.12-1.tar.gz -> ${PN}-noetic-release-${PV}.tar.gz"

LICENSE="BSD"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
RDEPEND="
	ros-noetic/kobuki_dock_drive
	ros-noetic/kobuki_driver
	ros-noetic/kobuki_ftdi
"
DEPEND="${RDEPEND}
	ros-noetic/catkin
"

SLOT="0"
ROS_DISTRO="noetic"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
