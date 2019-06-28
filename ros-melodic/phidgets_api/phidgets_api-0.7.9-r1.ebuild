# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{2_7,3_5,3_6} )

inherit ros-cmake

DESCRIPTION="A C++ Wrapper for the Phidgets C API"
HOMEPAGE="http://ros.org/wiki/phidgets_api"
SRC_URI="https://github.com/ros-drivers-gbp/phidgets_drivers-release/archive/release/melodic/${PN}/0.7.9-1.tar.gz -> ${PN}-melodic-release-${PV}.tar.gz"

LICENSE="BSD"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
RDEPEND="
	ros-melodic/libphidget21
	virtual/libusb:1
"
DEPEND="${RDEPEND}
	ros-melodic/catkin
	virtual/libusb:1
"

SLOT="0"
ROS_DISTRO="melodic"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
