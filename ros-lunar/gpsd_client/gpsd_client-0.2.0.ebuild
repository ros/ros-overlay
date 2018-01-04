# Copyright 2017 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{2_7,3_5} )

inherit ros-cmake

DESCRIPTION="connects to a GPSd server and broadcasts GPS fixes \
   using the NavSatFix[...]"
HOMEPAGE="http://ros.org/wiki/gpsd_client"
SRC_URI="https://github.com/swri-robotics-gbp/gps_umd-release/archive/release/lunar/${PN}/0.2.0-0.tar.gz -> ${PN}-lunar-release-${PV}.tar.gz"

LICENSE="BSD"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
RDEPEND="
"
DEPEND="${RDEPEND}
	ros-lunar/catkin
	ros-lunar/gps_common
	ros-lunar/roscpp
	ros-lunar/sensor_msgs
	sci-geosciences/gpsd
	virtual/pkgconfig
"

SLOT="0"
ROS_DISTRO="lunar"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
