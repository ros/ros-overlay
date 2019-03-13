# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{2_7,3_5,3_6} )

inherit ros-cmake

DESCRIPTION="A ROS node that controls a hostapd-based access\
	point. It is mainly in[...]"
HOMEPAGE="http://ros.org/wiki/hostapd_access_point"
SRC_URI="https://github.com/pr2-gbp/linux_networking-release/archive/release/melodic/${PN}/1.0.13-2.tar.gz -> ${PN}-melodic-release-${PV}.tar.gz"

LICENSE="BSD"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
RDEPEND="
	ros-melodic/access_point_control
	ros-melodic/dynamic_reconfigure
	ros-melodic/ieee80211_channels
	ros-melodic/rospy
"
DEPEND="${RDEPEND}
	ros-melodic/catkin
"

SLOT="0"
ROS_DISTRO="melodic"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
