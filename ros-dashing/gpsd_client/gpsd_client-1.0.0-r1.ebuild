# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{3_5,3_6} )

inherit ament-cmake

DESCRIPTION="connects to a GPSd server and broadcasts GPS fixes \
   using the NavSatFix[...]"
HOMEPAGE="http://ros.org/wiki/gpsd_client"
SRC_URI="https://github.com/swri-robotics-gbp/gps_umd-release/archive/release/dashing/${PN}/1.0.0-1.tar.gz -> ${PN}-dashing-release-${PV}.tar.gz"

LICENSE="BSD"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
RDEPEND="
	ros-dashing/gps_msgs
	ros-dashing/rclcpp
	ros-dashing/rclcpp_components
	ros-dashing/sensor_msgs
	sci-geosciences/gpsd
"
DEPEND="${RDEPEND}
	ros-dashing/ament_cmake
	virtual/pkgconfig
"

SLOT="0"
ROS_DISTRO="dashing"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
