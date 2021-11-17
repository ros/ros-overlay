# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=7
PYTHON_COMPAT=( python{3_8,3_9,3_10} )

inherit ros-cmake

DESCRIPTION="A simple script that aggregates all of the topics that a &quot;pr2_dashboar[...]"
HOMEPAGE="http://ros.org/wiki/pr2_dashboard_aggregator"
SRC_URI="https://github.com/pr2-gbp/pr2_common-release/archive/release/noetic/${PN}/1.13.0-1.tar.gz -> ${PN}-noetic-release-${PV}.tar.gz"

LICENSE="BSD"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
RDEPEND="
	ros-noetic/pr2_msgs
	ros-noetic/rospy
	ros-noetic/std_msgs
"
DEPEND="${RDEPEND}
	ros-noetic/catkin
"

SLOT="0"
ROS_DISTRO="noetic"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
