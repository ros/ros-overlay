# Copyright 2017 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{2_7,3_5} )

inherit ros-cmake

DESCRIPTION="'Test suite for the packages that are part of the "WiFi Test Setup" project:
	'"
HOMEPAGE="http://ros.org/wiki/network_control_tests"
SRC_URI="https://github.com/TheDash/linux_networking-release/archive/release/indigo/network_control_tests/1.0.11-0.tar.gz -> ${PN}-release-${PV}.tar.gz"

LICENSE="BSD"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
RDEPEND="
	ros-indigo/access_point_control
	ros-indigo/ddwrt_access_point
	ros-indigo/dynamic_reconfigure
	ros-indigo/hostapd_access_point
	ros-indigo/linksys_access_point
	ros-indigo/network_monitor_udp
	ros-indigo/network_traffic_control
	ros-indigo/rostest
"
DEPEND="${RDEPEND}
	ros-indigo/catkin
"

SLOT="0"
ROS_DISTRO="indigo"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"

