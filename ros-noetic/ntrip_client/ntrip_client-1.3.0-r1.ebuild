# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=7
PYTHON_COMPAT=( python{3_8,3_9,3_10} )

inherit ros-cmake

DESCRIPTION="NTRIP client that will publish RTCM corrections to a ROS topic, and optiona[...]"
HOMEPAGE="https://github.com/LORD-MicroStrain/ntrip_client"
SRC_URI="https://github.com/LORD-MicroStrain/${PN}-release/archive/release/noetic/${PN}/1.3.0-1.tar.gz -> ${PN}-noetic-release-${PV}.tar.gz"

LICENSE="MIT"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
RDEPEND="
	ros-noetic/nmea_msgs
	ros-noetic/rospy
	ros-noetic/rtcm_msgs
	ros-noetic/std_msgs
"
DEPEND="${RDEPEND}
	ros-noetic/catkin
"

SLOT="0"
ROS_DISTRO="noetic"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
