# Copyright 2017 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{2_7,3_5} )

inherit ros-cmake

DESCRIPTION="'Power drivers for the PR2 robot.'"
HOMEPAGE="http://ros.org/wiki/pr2_power_drivers"
SRC_URI="https://github.com/pr2-gbp/pr2_power_drivers-release/archive/release/indigo/pr2_power_drivers/1.1.5-0.tar.gz -> ${PN}-release-${PV}.tar.gz"

LICENSE="BSD"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
RDEPEND="
	ros-indigo/ocean_battery_driver
	ros-indigo/power_monitor
	ros-indigo/pr2_power_board
"
DEPEND="${RDEPEND}
	ros-indigo/catkin
"

SLOT="0"
ROS_DISTRO="indigo"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"

