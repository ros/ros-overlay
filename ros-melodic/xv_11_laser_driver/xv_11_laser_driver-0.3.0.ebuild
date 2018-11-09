# Copyright 2018 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{2_7,3_5,3_6} )

inherit ros-cmake

DESCRIPTION="Neato XV-11 Laser Driver. This driver works with the laser when it is remov[...]"
HOMEPAGE="http://ros.org/wiki/xv_11_laser_driver"
SRC_URI="https://github.com/rohbotics/${PN}-release/archive/release/melodic/${PN}/0.3.0-0.tar.gz -> ${PN}-melodic-release-${PV}.tar.gz"

LICENSE="BSD"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
RDEPEND="
	dev-libs/boost
"
DEPEND="${RDEPEND}
	ros-melodic/catkin
	ros-melodic/roscpp
	ros-melodic/sensor_msgs
"

SLOT="0"
ROS_DISTRO="melodic"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
