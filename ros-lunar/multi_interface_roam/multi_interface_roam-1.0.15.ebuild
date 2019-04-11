# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{2_7,3_5,3_6} )

inherit ros-cmake

DESCRIPTION="sdsdddsdsds"
HOMEPAGE="http://ros.org/wiki/multi_interface_roam"
SRC_URI="https://github.com/pr2-gbp/linux_networking-release/archive/release/lunar/${PN}/1.0.15-0.tar.gz -> ${PN}-lunar-release-${PV}.tar.gz"

LICENSE="( BSD LGPL-2 GPL-1 )"
KEYWORDS="~x86 ~amd64 ~arm ~arm64"
RDEPEND="
	ros-lunar/asmach
	ros-lunar/diagnostic_msgs
	ros-lunar/dynamic_reconfigure
	ros-lunar/ieee80211_channels
	ros-lunar/network_monitor_udp
	ros-lunar/pr2_msgs
	ros-lunar/rospy
	ros-lunar/std_msgs
"
DEPEND="${RDEPEND}
	ros-lunar/catkin
"

SLOT="0"
ROS_DISTRO="lunar"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
