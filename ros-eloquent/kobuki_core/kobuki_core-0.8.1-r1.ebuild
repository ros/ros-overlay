# Copyright 2020 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{3_5,3_6} )

inherit ament-cmake

DESCRIPTION="Non-ROS software for Kobuki, Yujin Robot\'s mobile research base."
HOMEPAGE="http://ros.org/wiki/kobuki_core"
SRC_URI="https://github.com/yujinrobot-release/${PN}-release/archive/release/eloquent/${PN}/0.8.1-1.tar.gz -> ${PN}-eloquent-release-${PV}.tar.gz"

LICENSE="BSD"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
RDEPEND="
	ros-eloquent/kobuki_dock_drive
	ros-eloquent/kobuki_driver
	ros-eloquent/kobuki_ftdi
"
DEPEND="${RDEPEND}
	ros-eloquent/ament_cmake
"

SLOT="0"
ROS_DISTRO="eloquent"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
