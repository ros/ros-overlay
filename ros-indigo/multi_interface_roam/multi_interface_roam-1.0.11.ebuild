# Copyright 2017 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{2_7,3_5} )

inherit ros-cmake

DESCRIPTION="sdsdddsdsds"
HOMEPAGE="http://ros.org/wiki/multi_interface_roam"
SRC_URI="https://github.com/TheDash/linux_networking-release/archive/release/indigo/multi_interface_roam/1.0.11-0.tar.gz -> ${PN}-release-${PV}.tar.gz"

LICENSE="( BSD LGPL-2 GPL-1 )"
KEYWORDS="~x86 ~amd64 ~arm ~arm64"
RDEPEND="
	ros-indigo/asmach
	ros-indigo/diagnostic_msgs
	ros-indigo/dynamic_reconfigure
	ros-indigo/ieee80211_channels
	ros-indigo/network_monitor_udp
	ros-indigo/pr2_msgs
	ros-indigo/rospy
	ros-indigo/std_msgs
"
DEPEND="${RDEPEND}
	ros-indigo/catkin
"

SLOT="0"
ROS_DISTRO="indigo"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"

