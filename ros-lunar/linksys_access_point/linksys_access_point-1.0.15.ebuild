# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{2_7,3_5,3_6} )

inherit ros-cmake

DESCRIPTION="A ROS node that controls a Linksys access point with\
	a Linksys WRT610n[...]"
HOMEPAGE="http://ros.org/wiki/linksys_access_point"
SRC_URI="https://github.com/pr2-gbp/linux_networking-release/archive/release/lunar/${PN}/1.0.15-0.tar.gz -> ${PN}-lunar-release-${PV}.tar.gz"

LICENSE="BSD"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
RDEPEND="
	ros-lunar/access_point_control
	ros-lunar/dynamic_reconfigure
	ros-lunar/ieee80211_channels
	ros-lunar/rospy
"
DEPEND="${RDEPEND}
	ros-lunar/catkin
"

SLOT="0"
ROS_DISTRO="lunar"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
