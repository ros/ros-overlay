# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{2_7,3_5,3_6} )

inherit ros-cmake

DESCRIPTION="A ROS node that controls a Linksys WRT610Nv2 access point with\
	a dd-wr[...]"
HOMEPAGE="http://ros.org/wiki/ddwrt_access_point"
SRC_URI="https://github.com/pr2-gbp/linux_networking-release/archive/release/kinetic/${PN}/1.0.15-0.tar.gz -> ${PN}-kinetic-release-${PV}.tar.gz"

LICENSE="BSD"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
RDEPEND="
	ros-kinetic/access_point_control
	ros-kinetic/dynamic_reconfigure
	ros-kinetic/ieee80211_channels
	ros-kinetic/rospy
"
DEPEND="${RDEPEND}
	ros-kinetic/catkin
"

SLOT="0"
ROS_DISTRO="kinetic"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
