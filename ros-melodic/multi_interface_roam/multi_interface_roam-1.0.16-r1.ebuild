# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{2_7,3_5,3_6} )

inherit ros-cmake

DESCRIPTION="sdsdddsdsds"
HOMEPAGE="http://ros.org/wiki/multi_interface_roam"
SRC_URI="https://github.com/pr2-gbp/linux_networking-release/archive/release/melodic/${PN}/1.0.16-1.tar.gz -> ${PN}-melodic-release-${PV}.tar.gz"

LICENSE="( BSD LGPL-2 GPL-1 )"
KEYWORDS="~x86 ~amd64 ~arm ~arm64"
RDEPEND="
	ros-melodic/asmach
	ros-melodic/diagnostic_msgs
	ros-melodic/dynamic_reconfigure
	ros-melodic/ieee80211_channels
	ros-melodic/network_monitor_udp
	ros-melodic/pr2_msgs
	ros-melodic/rospy
	ros-melodic/std_msgs
	dev-python/twisted
"
DEPEND="${RDEPEND}
	ros-melodic/catkin
"

SLOT="0"
ROS_DISTRO="melodic"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
