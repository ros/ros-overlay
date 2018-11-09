# Copyright 2018 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{2_7,3_5,3_6} )

inherit ros-cmake

DESCRIPTION="Utilities for flashing and enabling Kobuki\'s USB connection.\
\		This p[...]"
HOMEPAGE="http://ros.org/wiki/kobuki_ftdi"
SRC_URI="https://github.com/yujinrobot-release/kobuki_core-release/archive/release/melodic/${PN}/0.7.8-0.tar.gz -> ${PN}-melodic-release-${PV}.tar.gz"

LICENSE="BSD"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
RDEPEND="
	ros-melodic/ecl_command_line
	dev-embedded/ftdi_eeprom
	dev-embedded/libftdi
	virtual/libusb
"
DEPEND="${RDEPEND}
	ros-melodic/catkin
	virtual/pkgconfig
"

SLOT="0"
ROS_DISTRO="melodic"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
