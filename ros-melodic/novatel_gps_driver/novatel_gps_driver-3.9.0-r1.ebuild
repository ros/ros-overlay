# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{2_7,3_5,3_6} )

inherit ros-cmake

DESCRIPTION="Driver for NovAtel receivers"
HOMEPAGE="https://wiki.ros.org"
SRC_URI="https://github.com/swri-robotics-gbp/${PN}-release/archive/release/melodic/${PN}/3.9.0-1.tar.gz -> ${PN}-melodic-release-${PV}.tar.gz"

LICENSE="BSD"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
RDEPEND="
	ros-melodic/diagnostic_msgs
	ros-melodic/diagnostic_updater
	ros-melodic/gps_common
	ros-melodic/nav_msgs
	ros-melodic/nodelet
	ros-melodic/novatel_gps_msgs
	ros-melodic/roscpp
	ros-melodic/sensor_msgs
	ros-melodic/std_msgs
	ros-melodic/swri_math_util
	ros-melodic/swri_nodelet
	ros-melodic/swri_roscpp
	ros-melodic/swri_serial_util
	ros-melodic/swri_string_util
	ros-melodic/tf
	dev-libs/boost[python]
	net-libs/libpcap
"
DEPEND="${RDEPEND}
	ros-melodic/catkin
"

SLOT="0"
ROS_DISTRO="melodic"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
