# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{2_7,3_5,3_6} )

inherit ros-cmake

DESCRIPTION="Test suite for the packages that are part of the &quot;WiFi Test Setup&quot[...]"
HOMEPAGE="http://ros.org/wiki/network_control_tests"
SRC_URI="https://github.com/pr2-gbp/linux_networking-release/archive/release/melodic/${PN}/1.0.16-1.tar.gz -> ${PN}-melodic-release-${PV}.tar.gz"

LICENSE="BSD"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
RDEPEND="
	ros-melodic/access_point_control
	ros-melodic/ddwrt_access_point
	ros-melodic/dynamic_reconfigure
	ros-melodic/hostapd_access_point
	ros-melodic/linksys_access_point
	ros-melodic/network_monitor_udp
	ros-melodic/network_traffic_control
	ros-melodic/rostest
"
DEPEND="${RDEPEND}
	ros-melodic/catkin
"

SLOT="0"
ROS_DISTRO="melodic"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
