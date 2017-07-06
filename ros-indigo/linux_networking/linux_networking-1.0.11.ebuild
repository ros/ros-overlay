# Copyright 2017 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{2_7,3_5} )

inherit ros-cmake

DESCRIPTION="'The linux_networking package'"
HOMEPAGE="https://wiki.ros.org"
SRC_URI="https://github.com/TheDash/linux_networking-release/archive/release/indigo/linux_networking/1.0.11-0.tar.gz -> ${PN}-release-${PV}.tar.gz"

LICENSE="CC-BY-SA-3.0"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
RDEPEND="
	ros-indigo/access_point_control
	ros-indigo/asmach
	ros-indigo/asmach_tutorials
	ros-indigo/ddwrt_access_point
	ros-indigo/hostapd_access_point
	ros-indigo/ieee80211_channels
	ros-indigo/linksys_access_point
	ros-indigo/multi_interface_roam
	ros-indigo/network_control_tests
	ros-indigo/network_detector
	ros-indigo/network_monitor_udp
	ros-indigo/network_traffic_control
"
DEPEND="${RDEPEND}
	ros-indigo/catkin
"

SLOT="0"
ROS_DISTRO="indigo"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"

