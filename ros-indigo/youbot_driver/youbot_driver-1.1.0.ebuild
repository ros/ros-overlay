# Copyright 2017 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{2_7,3_5} )

inherit ros-cmake

DESCRIPTION="'driver for the KUKA youBot robot'"
HOMEPAGE="http://github.com/youbot/youbot_driver"
SRC_URI="https://github.com/youbot-release/youbot_driver-release/archive/release/indigo/youbot_driver/1.1.0-0.tar.gz -> ${PN}-release-${PV}.tar.gz"

LICENSE="( LGPL-2 CC-BY-SA-3.0 )"
KEYWORDS="~x86 ~amd64 ~arm ~arm64"
RDEPEND="
	ros-indigo/rosconsole
	ros-indigo/roscpp
"
DEPEND="${RDEPEND}
	ros-indigo/catkin
"

SLOT="0"
ROS_DISTRO="indigo"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"

