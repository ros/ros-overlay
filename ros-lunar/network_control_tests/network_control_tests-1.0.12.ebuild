# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{2_7,3_5,3_6} )

inherit ros-cmake

DESCRIPTION="Test suite for the packages that are part of the &quot;WiFi Test Setup&quot[...]"
HOMEPAGE="http://ros.org/wiki/network_control_tests"
SRC_URI="https://github.com/pr2-gbp/linux_networking-release/archive/release/lunar/${PN}/1.0.12-0.tar.gz -> ${PN}-lunar-release-${PV}.tar.gz"

LICENSE="BSD"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
RDEPEND="
	ros-lunar/access_point_control
	ros-lunar/ddwrt_access_point
	ros-lunar/dynamic_reconfigure
	ros-lunar/hostapd_access_point
	ros-lunar/linksys_access_point
	ros-lunar/network_monitor_udp
	ros-lunar/network_traffic_control
	ros-lunar/rostest
"
DEPEND="${RDEPEND}
	ros-lunar/catkin
"

SLOT="0"
ROS_DISTRO="lunar"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
