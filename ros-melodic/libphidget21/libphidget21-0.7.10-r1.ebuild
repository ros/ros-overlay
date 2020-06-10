# Copyright 2020 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{2_7,3_5,3_6} )

inherit ros-cmake

DESCRIPTION="This package wraps the libphidget21 to use it as a ROS dependency"
HOMEPAGE="http://ros.org/wiki/libphidget21"
SRC_URI="https://github.com/ros-drivers-gbp/phidgets_drivers-release/archive/release/melodic/${PN}/0.7.10-1.tar.gz -> ${PN}-melodic-release-${PV}.tar.gz"

LICENSE="LGPL-2"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
RDEPEND="
	virtual/libusb:1
"
DEPEND="${RDEPEND}
	ros-melodic/catkin
	virtual/libusb:1
"

SLOT="0"
ROS_DISTRO="melodic"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
