# Copyright 2018 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{2_7,3_5,3_6} )

inherit ros-cmake

DESCRIPTION="Non-ROS software for Kobuki, Yujin Robot\'s mobile research base."
HOMEPAGE="http://ros.org/wiki/kobuki_core"
SRC_URI="https://github.com/yujinrobot-release/${PN}-release/archive/release/melodic/${PN}/0.7.8-0.tar.gz -> ${PN}-melodic-release-${PV}.tar.gz"

LICENSE="BSD"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
RDEPEND="
	ros-melodic/kobuki_dock_drive
	ros-melodic/kobuki_driver
	ros-melodic/kobuki_ftdi
"
DEPEND="${RDEPEND}
	ros-melodic/catkin
"

SLOT="0"
ROS_DISTRO="melodic"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
