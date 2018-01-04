# Copyright 2017 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{2_7,3_5} )

inherit ros-cmake

DESCRIPTION="GPS messages and common routines for use in GPS drivers"
HOMEPAGE="http://ros.org/wiki/gps_common"
SRC_URI="https://github.com/swri-robotics-gbp/gps_umd-release/archive/release/lunar/${PN}/0.2.0-0.tar.gz -> ${PN}-lunar-release-${PV}.tar.gz"

LICENSE="BSD"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
RDEPEND="
	ros-lunar/message_filters
	ros-lunar/message_runtime
	ros-lunar/nav_msgs
	ros-lunar/roscpp
	ros-lunar/rospy
	ros-lunar/sensor_msgs
	ros-lunar/std_msgs
"
DEPEND="${RDEPEND}
	ros-lunar/catkin
	ros-lunar/message_generation
"

SLOT="0"
ROS_DISTRO="lunar"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
