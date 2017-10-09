# Copyright 2017 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{2_7,3_5} )

inherit ros-cmake

DESCRIPTION="Driver for NovAtel receivers"
HOMEPAGE="https://wiki.ros.org"
SRC_URI="https://github.com/swri-robotics-gbp/novatel_gps_driver-release/archive/release/kinetic/novatel_gps_driver/3.4.0-0.tar.gz -> ${PN}-kinetic-release-${PV}.tar.gz"

LICENSE="BSD"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
RDEPEND="
	ros-kinetic/diagnostic_msgs
	ros-kinetic/diagnostic_updater
	ros-kinetic/gps_common
	ros-kinetic/nav_msgs
	ros-kinetic/nodelet
	ros-kinetic/novatel_gps_msgs
	ros-kinetic/roscpp
	ros-kinetic/sensor_msgs
	ros-kinetic/std_msgs
	ros-kinetic/swri_math_util
	ros-kinetic/swri_nodelet
	ros-kinetic/swri_roscpp
	ros-kinetic/swri_serial_util
	ros-kinetic/swri_string_util
	ros-kinetic/tf
	dev-libs/boost
	net-libs/libpcap
"
DEPEND="${RDEPEND}
	ros-kinetic/catkin
"

SLOT="0"
ROS_DISTRO="kinetic"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
