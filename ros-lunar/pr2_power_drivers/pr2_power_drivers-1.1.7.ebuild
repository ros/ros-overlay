# Copyright 2018 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{2_7,3_5,3_6} )

inherit ros-cmake

DESCRIPTION="Power drivers for the PR2 robot."
HOMEPAGE="http://ros.org/wiki/pr2_power_drivers"
SRC_URI="https://github.com/pr2-gbp/${PN}-release/archive/release/lunar/${PN}/1.1.7-0.tar.gz -> ${PN}-lunar-release-${PV}.tar.gz"

LICENSE="BSD"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
RDEPEND="
	ros-lunar/ocean_battery_driver
	ros-lunar/power_monitor
	ros-lunar/pr2_power_board
"
DEPEND="${RDEPEND}
	ros-lunar/catkin
"

SLOT="0"
ROS_DISTRO="lunar"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
