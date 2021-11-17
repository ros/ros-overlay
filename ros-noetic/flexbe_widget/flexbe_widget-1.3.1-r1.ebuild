# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=7
PYTHON_COMPAT=( python{3_8,3_9,3_10} )

inherit ros-cmake

DESCRIPTION="flexbe_widget implements some smaller scripts for the behavior engine."
HOMEPAGE="http://ros.org/wiki/flexbe_widget"
SRC_URI="https://github.com/FlexBE/flexbe_behavior_engine-release/archive/release/noetic/${PN}/1.3.1-1.tar.gz -> ${PN}-noetic-release-${PV}.tar.gz"

LICENSE="BSD"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
RDEPEND="
	ros-noetic/flexbe_core
	ros-noetic/flexbe_mirror
	ros-noetic/flexbe_msgs
	ros-noetic/flexbe_onboard
	ros-noetic/rospy
"
DEPEND="${RDEPEND}
	ros-noetic/catkin
"

SLOT="0"
ROS_DISTRO="noetic"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
