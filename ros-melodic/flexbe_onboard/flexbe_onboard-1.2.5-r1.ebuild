# Copyright 2020 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{2_7,3_5,3_6} )

inherit ros-cmake

DESCRIPTION="flexbe_onboard implements the robot-side of the behavior engine from where [...]"
HOMEPAGE="http://ros.org/wiki/flexbe_onboard"
SRC_URI="https://github.com/FlexBE/flexbe_behavior_engine-release/archive/release/melodic/${PN}/1.2.5-1.tar.gz -> ${PN}-melodic-release-${PV}.tar.gz"

LICENSE="BSD"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
RDEPEND="
	ros-melodic/flexbe_core
	ros-melodic/flexbe_msgs
	ros-melodic/rospy
	ros-melodic/smach_ros
"
DEPEND="${RDEPEND}
	ros-melodic/catkin
	ros-melodic/rostest
"

SLOT="0"
ROS_DISTRO="melodic"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
