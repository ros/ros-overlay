# Copyright 2017 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{2_7,3_5} )

inherit ros-cmake

DESCRIPTION="Ethernet interface to OxTS GPS receivers NCOM packet structure"
HOMEPAGE="https://wiki.ros.org"
SRC_URI="https://github.com/DataspeedInc-release/oxford_gps_eth-release/archive/release/indigo/oxford_gps_eth/0.0.4-0.tar.gz -> ${PN}-release-${PV}.tar.gz"

LICENSE="BSD"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
RDEPEND="
	ros-indigo/nav_msgs
	ros-indigo/roscpp
	ros-indigo/sensor_msgs
	ros-indigo/tf
"
DEPEND="${RDEPEND}
	ros-indigo/catkin
"

SLOT="0"
ROS_DISTRO="indigo"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"

