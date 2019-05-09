# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{2_7,3_5,3_6} )

inherit ros-cmake

DESCRIPTION="The linux_networking package"
HOMEPAGE="https://wiki.ros.org"
SRC_URI="https://github.com/pr2-gbp/${PN}-release/archive/release/kinetic/${PN}/1.0.15-0.tar.gz -> ${PN}-kinetic-release-${PV}.tar.gz"

LICENSE="TODO"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
RDEPEND="
	ros-kinetic/access_point_control
	ros-kinetic/asmach
	ros-kinetic/asmach_tutorials
	ros-kinetic/ddwrt_access_point
	ros-kinetic/hostapd_access_point
	ros-kinetic/ieee80211_channels
	ros-kinetic/linksys_access_point
	ros-kinetic/multi_interface_roam
	ros-kinetic/network_control_tests
	ros-kinetic/network_detector
	ros-kinetic/network_monitor_udp
	ros-kinetic/network_traffic_control
"
DEPEND="${RDEPEND}
	ros-kinetic/catkin
"

SLOT="0"
ROS_DISTRO="kinetic"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
