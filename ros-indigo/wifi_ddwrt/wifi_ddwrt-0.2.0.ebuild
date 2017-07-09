# Copyright 2017 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{2_7,3_5} )

inherit ros-cmake

DESCRIPTION="'Access to the DD-WRT wifi'"
HOMEPAGE="http://ros.org/wiki/wifi_ddwrt"
SRC_URI="https://github.com/ros-gbp/wifi_ddwrt-release/archive/release/indigo/wifi_ddwrt/0.2.0-0.tar.gz -> ${PN}-release-${PV}.tar.gz"

LICENSE="BSD"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
RDEPEND="
	ros-indigo/geometry_msgs
	ros-indigo/message_runtime
	ros-indigo/nav_msgs
	ros-indigo/pr2_msgs
	ros-indigo/rospy
	ros-indigo/std_msgs
	ros-indigo/tf
	ros-indigo/visualization_msgs
	dev-python/mechanize
"
DEPEND="${RDEPEND}
	ros-indigo/catkin
	ros-indigo/message_generation
"

SLOT="0"
ROS_DISTRO="indigo"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"

