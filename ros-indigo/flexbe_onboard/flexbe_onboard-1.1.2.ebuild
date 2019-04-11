# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{2_7,3_5,3_6} )

inherit ros-cmake

DESCRIPTION="flexbe_onboard implements the robot-side of the behavior engine from where [...]"
HOMEPAGE="http://ros.org/wiki/flexbe_onboard"
SRC_URI="https://github.com/FlexBE/flexbe_behavior_engine-release/archive/release/indigo/${PN}/1.1.2-0.tar.gz -> ${PN}-indigo-release-${PV}.tar.gz"

LICENSE="BSD"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
RDEPEND="
	ros-indigo/flexbe_core
	ros-indigo/flexbe_msgs
	ros-indigo/rospy
	ros-indigo/smach_ros
"
DEPEND="${RDEPEND}
	ros-indigo/catkin
"

SLOT="0"
ROS_DISTRO="indigo"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
