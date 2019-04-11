# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{2_7,3_5,3_6} )

inherit ros-cmake

DESCRIPTION="flexbe_core provides the core smach extension for the FlexBE behavior engine."
HOMEPAGE="http://ros.org/wiki/flexbe_core"
SRC_URI="https://github.com/FlexBE/flexbe_behavior_engine-release/archive/release/lunar/${PN}/1.1.2-0.tar.gz -> ${PN}-lunar-release-${PV}.tar.gz"

LICENSE="BSD"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
RDEPEND="
	ros-lunar/diagnostic_msgs
	ros-lunar/flexbe_msgs
	ros-lunar/rospy
	ros-lunar/smach_ros
	ros-lunar/tf
"
DEPEND="${RDEPEND}
	ros-lunar/catkin
"

SLOT="0"
ROS_DISTRO="lunar"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
