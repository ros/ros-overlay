# Copyright 2018 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{2_7,3_5,3_6} )

inherit ros-cmake

DESCRIPTION="Driver for NovAtel receivers"
HOMEPAGE="https://wiki.ros.org"
SRC_URI="https://github.com/swri-robotics-gbp/${PN}-release/archive/release/indigo/${PN}/3.6.0-0.tar.gz -> ${PN}-indigo-release-${PV}.tar.gz"

LICENSE="BSD"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
RDEPEND="
	ros-indigo/diagnostic_msgs
	ros-indigo/diagnostic_updater
	ros-indigo/gps_common
	ros-indigo/nav_msgs
	ros-indigo/nodelet
	ros-indigo/novatel_gps_msgs
	ros-indigo/roscpp
	ros-indigo/sensor_msgs
	ros-indigo/std_msgs
	ros-indigo/swri_math_util
	ros-indigo/swri_nodelet
	ros-indigo/swri_roscpp
	ros-indigo/swri_serial_util
	ros-indigo/swri_string_util
	ros-indigo/tf
	dev-libs/boost
	net-libs/libpcap
"
DEPEND="${RDEPEND}
	ros-indigo/catkin
"

SLOT="0"
ROS_DISTRO="indigo"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
