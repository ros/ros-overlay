# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{2_7,3_5,3_6} )

inherit ros-cmake

DESCRIPTION="Facilities to monitor a network connection by sending UDP packets from\
   [...]"
HOMEPAGE="http://ros.org/wiki/network_monitor_udp"
SRC_URI="https://github.com/pr2-gbp/linux_networking-release/archive/release/kinetic/${PN}/1.0.15-0.tar.gz -> ${PN}-kinetic-release-${PV}.tar.gz"

LICENSE="BSD"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
RDEPEND="
	ros-kinetic/actionlib
	ros-kinetic/actionlib_msgs
	ros-kinetic/diagnostic_msgs
	ros-kinetic/message_runtime
	ros-kinetic/rospy
"
DEPEND="${RDEPEND}
	ros-kinetic/catkin
	ros-kinetic/message_generation
"

SLOT="0"
ROS_DISTRO="kinetic"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
