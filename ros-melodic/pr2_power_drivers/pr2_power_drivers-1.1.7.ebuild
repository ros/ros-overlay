# Copyright 2018 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{2_7,3_5,3_6} )

inherit ros-cmake

DESCRIPTION="Power drivers for the PR2 robot."
HOMEPAGE="http://ros.org/wiki/pr2_power_drivers"
SRC_URI="https://github.com/pr2-gbp/${PN}-release/archive/release/melodic/${PN}/1.1.7-0.tar.gz -> ${PN}-melodic-release-${PV}.tar.gz"

LICENSE="BSD"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
RDEPEND="
	ros-melodic/ocean_battery_driver
	ros-melodic/power_monitor
	ros-melodic/pr2_power_board
"
DEPEND="${RDEPEND}
	ros-melodic/catkin
"

SLOT="0"
ROS_DISTRO="melodic"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
