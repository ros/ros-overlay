# Copyright 2018 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{2_7,3_5,3_6} )

inherit ros-cmake

DESCRIPTION="This is an interface to the Ocean Server Technology Intelligent Battery and[...]"
HOMEPAGE="http://www.ros.org/wiki/ocean_battery_driver"
SRC_URI="https://github.com/pr2-gbp/pr2_power_drivers-release/archive/release/melodic/${PN}/1.1.7-0.tar.gz -> ${PN}-melodic-release-${PV}.tar.gz"

LICENSE="BSD"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
RDEPEND="
	ros-melodic/diagnostic_msgs
	ros-melodic/diagnostic_updater
	ros-melodic/pr2_msgs
	ros-melodic/roscpp
	dev-libs/log4cxx
"
DEPEND="${RDEPEND}
	ros-melodic/catkin
"

SLOT="0"
ROS_DISTRO="melodic"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
