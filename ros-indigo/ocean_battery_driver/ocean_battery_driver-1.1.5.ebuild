# Copyright 2017 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{2_7,3_5} )

inherit ros-cmake

DESCRIPTION="This is an interface to the Ocean Server Technology Intelligent Battery and[...]"
HOMEPAGE="http://www.ros.org/wiki/ocean_battery_driver"
SRC_URI="https://github.com/pr2-gbp/pr2_power_drivers-release/archive/release/indigo/ocean_battery_driver/1.1.5-0.tar.gz -> ${PN}-indigo-release-${PV}.tar.gz"

LICENSE="BSD"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
RDEPEND="
	ros-indigo/diagnostic_msgs
	ros-indigo/diagnostic_updater
	ros-indigo/pr2_msgs
	ros-indigo/roscpp
	dev-libs/log4cxx
"
DEPEND="${RDEPEND}
	ros-indigo/catkin
"

SLOT="0"
ROS_DISTRO="indigo"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
