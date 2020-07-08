# Copyright 2020 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{3_5,3_6} )

inherit ament-cmake

DESCRIPTION="connects to a GPSd server and broadcasts GPS fixes \
   using the NavSatFix[...]"
HOMEPAGE="http://ros.org/wiki/gpsd_client"
SRC_URI="https://github.com/swri-robotics-gbp/gps_umd-release/archive/release/foxy/${PN}/1.0.3-1.tar.gz -> ${PN}-foxy-release-${PV}.tar.gz"

LICENSE="BSD"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
RDEPEND="
	ros-foxy/gps_msgs
	ros-foxy/rclcpp
	ros-foxy/rclcpp_components
	ros-foxy/sensor_msgs
	sci-geosciences/gpsd
"
DEPEND="${RDEPEND}
	ros-foxy/ament_cmake
	virtual/pkgconfig
"

SLOT="0"
ROS_DISTRO="foxy"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
