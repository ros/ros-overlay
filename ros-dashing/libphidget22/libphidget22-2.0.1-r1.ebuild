# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{3_5,3_6} )

inherit ament-cmake

DESCRIPTION="This package wraps the libphidget22 to use it as a ROS dependency"
HOMEPAGE="http://ros.org/wiki/libphidget22"
SRC_URI="https://github.com/ros2-gbp/phidgets_drivers-release/archive/release/dashing/${PN}/2.0.1-1.tar.gz -> ${PN}-dashing-release-${PV}.tar.gz"

LICENSE="LGPL-2"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
RDEPEND="
	virtual/libusb:1
"
DEPEND="${RDEPEND}
	ros-dashing/ament_cmake
	virtual/libusb:1
"

SLOT="0"
ROS_DISTRO="dashing"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
