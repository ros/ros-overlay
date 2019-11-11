# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{2_7,3_5,3_6} )

inherit ros-cmake

DESCRIPTION="The linux_networking package"
HOMEPAGE="https://wiki.ros.org"
SRC_URI="https://github.com/pr2-gbp/${PN}-release/archive/release/melodic/${PN}/1.0.16-1.tar.gz -> ${PN}-melodic-release-${PV}.tar.gz"

LICENSE="TODO"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
RDEPEND="
	ros-melodic/access_point_control
	ros-melodic/asmach
	ros-melodic/asmach_tutorials
	ros-melodic/ddwrt_access_point
	ros-melodic/hostapd_access_point
	ros-melodic/ieee80211_channels
	ros-melodic/linksys_access_point
	ros-melodic/multi_interface_roam
	ros-melodic/network_control_tests
	ros-melodic/network_detector
	ros-melodic/network_monitor_udp
	ros-melodic/network_traffic_control
"
DEPEND="${RDEPEND}
	ros-melodic/catkin
"

SLOT="0"
ROS_DISTRO="melodic"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
