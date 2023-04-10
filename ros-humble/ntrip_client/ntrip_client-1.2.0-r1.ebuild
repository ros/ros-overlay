# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=8
PYTHON_COMPAT=( python{3_8,3_9,3_10,3_11} )

inherit ament-python

DESCRIPTION="NTRIP client that will publish RTCM corrections to a ROS topic, and optiona[...]"
HOMEPAGE="https://github.com/LORD-MicroStrain/ntrip_client"
SRC_URI="https://github.com/ros2-gbp/${PN}-release/archive/release/humble/${PN}/1.2.0-1.tar.gz -> ${PN}-humble-release-${PV}.tar.gz"

LICENSE="MIT"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
RDEPEND="
	ros-humble/mavros_msgs
	ros-humble/nmea_msgs
	ros-humble/rclpy
	ros-humble/std_msgs
"
DEPEND="${RDEPEND}
"

SLOT="0"
ROS_DISTRO="humble"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
