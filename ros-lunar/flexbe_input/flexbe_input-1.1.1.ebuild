# Copyright 2018 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{2_7,3_5,3_6} )

inherit ros-cmake

DESCRIPTION="flexbe_input enables to send data to onboard behavior when required."
HOMEPAGE="http://ros.org/wiki/flexbe_input"
SRC_URI="https://github.com/FlexBE/flexbe_behavior_engine-release/archive/release/lunar/${PN}/1.1.1-0.tar.gz -> ${PN}-lunar-release-${PV}.tar.gz"

LICENSE="BSD"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
RDEPEND="
	ros-lunar/actionlib
	ros-lunar/flexbe_msgs
	ros-lunar/rospy
	ros-lunar/smach_ros
"
DEPEND="${RDEPEND}
	ros-lunar/catkin
"

SLOT="0"
ROS_DISTRO="lunar"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
