# Copyright 2017 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{2_7,3_5} )

inherit ros-cmake

DESCRIPTION="'Neato XV-11 Laser Driver. This driver works with the laser when it is removed fr'"
HOMEPAGE="http://ros.org/wiki/xv_11_laser_driver"
SRC_URI="https://github.com/rohbotics/xv_11_laser_driver-release/archive/release/indigo/xv_11_laser_driver/0.2.2-0.tar.gz -> ${PN}-release-${PV}.tar.gz"

LICENSE="BSD"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
RDEPEND="
	dev-libs/boost
"
DEPEND="${RDEPEND}
	ros-indigo/catkin
	ros-indigo/roscpp
	ros-indigo/sensor_msgs
"

SLOT="0"
ROS_DISTRO="indigo"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"

