# Copyright 2018 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{2_7,3_5,3_6} )

inherit ros-cmake

DESCRIPTION="A C++ Wrapper for the Phidgets C API"
HOMEPAGE="http://ros.org/wiki/phidgets_api"
SRC_URI="https://github.com/ros-drivers-gbp/phidgets_drivers-release/archive/release/kinetic/${PN}/0.7.7-0.tar.gz -> ${PN}-kinetic-release-${PV}.tar.gz"

LICENSE="BSD"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
RDEPEND="
	ros-kinetic/libphidget21
	virtual/libusb:1
"
DEPEND="${RDEPEND}
	ros-kinetic/catkin
	virtual/libusb:1
"

SLOT="0"
ROS_DISTRO="kinetic"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
