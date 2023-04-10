# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{2_7,3_5,3_6} )

inherit ros-cmake

DESCRIPTION="CMake scripts for building Arduino Leonardo \(atmega32u4\) Firmwares"
HOMEPAGE="https://wiki.ros.org"
SRC_URI="https://github.com/clearpath-gbp/${PN}-release/archive/release/melodic/${PN}/0.1.5-1.tar.gz -> ${PN}-melodic-release-${PV}.tar.gz"

LICENSE="( MPL BSD )"
KEYWORDS="~x86 ~amd64 ~arm ~arm64"
RDEPEND="
	ros-melodic/rosserial_arduino
	dev-embedded/avr-libc
	dev-embedded/avrdude
	sys-devel/crossdev
"
DEPEND="${RDEPEND}
	ros-melodic/catkin
	dev-libs/libtar
"

SLOT="0"
ROS_DISTRO="melodic"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
