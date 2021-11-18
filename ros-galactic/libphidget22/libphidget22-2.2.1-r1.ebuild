# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=7
PYTHON_COMPAT=( python{3_8,3_9,3_10} )

inherit ament-cmake

DESCRIPTION="This package wraps the libphidget22 to use it as a ROS dependency"
HOMEPAGE="http://ros.org/wiki/libphidget22"
SRC_URI="https://github.com/ros2-gbp/phidgets_drivers-release/archive/release/galactic/${PN}/2.2.1-1.tar.gz -> ${PN}-galactic-release-${PV}.tar.gz"

LICENSE="LGPL-2"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
RDEPEND="
	virtual/libusb:1
"
DEPEND="${RDEPEND}
	ros-galactic/ament_cmake
	virtual/libusb:1
"

SLOT="0"
ROS_DISTRO="galactic"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
