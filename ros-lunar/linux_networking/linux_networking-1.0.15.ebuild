# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{2_7,3_5,3_6} )

inherit ros-cmake

DESCRIPTION="The linux_networking package"
HOMEPAGE="https://wiki.ros.org"
SRC_URI="https://github.com/pr2-gbp/${PN}-release/archive/release/lunar/${PN}/1.0.15-0.tar.gz -> ${PN}-lunar-release-${PV}.tar.gz"

LICENSE="TODO"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
RDEPEND="
	ros-lunar/access_point_control
	ros-lunar/asmach
	ros-lunar/asmach_tutorials
	ros-lunar/ddwrt_access_point
	ros-lunar/hostapd_access_point
	ros-lunar/ieee80211_channels
	ros-lunar/linksys_access_point
	ros-lunar/multi_interface_roam
	ros-lunar/network_control_tests
	ros-lunar/network_detector
	ros-lunar/network_monitor_udp
	ros-lunar/network_traffic_control
"
DEPEND="${RDEPEND}
	ros-lunar/catkin
"

SLOT="0"
ROS_DISTRO="lunar"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
