# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=7
PYTHON_COMPAT=( python{3_8,3_9,3_10} )

inherit ros-cmake

DESCRIPTION="Driver for NovAtel receivers"
HOMEPAGE="https://wiki.ros.org"
SRC_URI="https://github.com/swri-robotics-gbp/${PN}-release/archive/release/noetic/${PN}/3.9.0-2.tar.gz -> ${PN}-noetic-release-${PV}.tar.gz"

LICENSE="BSD"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
RDEPEND="
	ros-noetic/diagnostic_msgs
	ros-noetic/diagnostic_updater
	ros-noetic/gps_common
	ros-noetic/nav_msgs
	ros-noetic/nodelet
	ros-noetic/novatel_gps_msgs
	ros-noetic/roscpp
	ros-noetic/sensor_msgs
	ros-noetic/std_msgs
	ros-noetic/swri_math_util
	ros-noetic/swri_nodelet
	ros-noetic/swri_roscpp
	ros-noetic/swri_serial_util
	ros-noetic/swri_string_util
	ros-noetic/tf
	dev-libs/boost[python]
	net-libs/libpcap
"
DEPEND="${RDEPEND}
	ros-noetic/catkin
"

SLOT="0"
ROS_DISTRO="noetic"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
