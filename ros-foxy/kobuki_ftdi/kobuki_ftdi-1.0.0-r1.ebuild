# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{3_8,3_9,3_10} )

inherit ament-cmake

DESCRIPTION="Utilities for flashing and enabling Kobuki\'s USB connection.\
\		This p[...]"
HOMEPAGE="http://ros.org/wiki/kobuki_ftdi"
SRC_URI="https://github.com/stonier/${PN}-release/archive/release/foxy/${PN}/1.0.0-1.tar.gz -> ${PN}-foxy-release-${PV}.tar.gz"

LICENSE="BSD"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
RDEPEND="
	ros-foxy/ecl_command_line
	dev-embedded/ftdi_eeprom
	dev-embedded/libftdi
	virtual/libusb
"
DEPEND="${RDEPEND}
	ros-foxy/ament_cmake_ros
	ros-foxy/ecl_build
	virtual/pkgconfig
"

SLOT="0"
ROS_DISTRO="foxy"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
