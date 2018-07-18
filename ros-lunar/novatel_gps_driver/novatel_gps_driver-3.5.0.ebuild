# Copyright 2018 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{2_7,3_5,3_6} )

inherit ros-cmake

DESCRIPTION="Driver for NovAtel receivers"
HOMEPAGE="https://wiki.ros.org"
SRC_URI="https://github.com/swri-robotics-gbp/${PN}-release/archive/release/lunar/${PN}/3.5.0-0.tar.gz -> ${PN}-lunar-release-${PV}.tar.gz"

LICENSE="BSD"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
RDEPEND="
	ros-lunar/diagnostic_msgs
	ros-lunar/diagnostic_updater
	ros-lunar/gps_common
	ros-lunar/nav_msgs
	ros-lunar/nodelet
	ros-lunar/novatel_gps_msgs
	ros-lunar/roscpp
	ros-lunar/sensor_msgs
	ros-lunar/std_msgs
	ros-lunar/swri_math_util
	ros-lunar/swri_nodelet
	ros-lunar/swri_roscpp
	ros-lunar/swri_serial_util
	ros-lunar/swri_string_util
	ros-lunar/tf
	dev-libs/boost
	net-libs/libpcap
"
DEPEND="${RDEPEND}
	ros-lunar/catkin
"

SLOT="0"
ROS_DISTRO="lunar"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
