# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{2_7,3_5,3_6} )

inherit ros-cmake

DESCRIPTION="Test suite for the packages that are part of the &quot;WiFi Test Setup&quot[...]"
HOMEPAGE="http://ros.org/wiki/network_control_tests"
SRC_URI="https://github.com/pr2-gbp/linux_networking-release/archive/release/kinetic/${PN}/1.0.15-0.tar.gz -> ${PN}-kinetic-release-${PV}.tar.gz"

LICENSE="BSD"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
RDEPEND="
	ros-kinetic/access_point_control
	ros-kinetic/ddwrt_access_point
	ros-kinetic/dynamic_reconfigure
	ros-kinetic/hostapd_access_point
	ros-kinetic/linksys_access_point
	ros-kinetic/network_monitor_udp
	ros-kinetic/network_traffic_control
	ros-kinetic/rostest
"
DEPEND="${RDEPEND}
	ros-kinetic/catkin
"

SLOT="0"
ROS_DISTRO="kinetic"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
