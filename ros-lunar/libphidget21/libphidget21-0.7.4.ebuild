# Copyright 2017 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{2_7,3_5} )

inherit ros-cmake

DESCRIPTION="This package wraps the libphidget21 to use it as a ROS dependency"
HOMEPAGE="https://wiki.ros.org"
SRC_URI="https://github.com/ros-drivers-gbp/phidgets_drivers-release/archive/release/lunar/libphidget21/0.7.4-0.tar.gz -> ${PN}-lunar-release-${PV}.tar.gz"

LICENSE="LGPL-2"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
RDEPEND="
	virtual/libusb
"
DEPEND="${RDEPEND}
	ros-lunar/catkin
"

SLOT="0"
ROS_DISTRO="lunar"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
