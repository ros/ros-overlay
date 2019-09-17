# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{2_7,3_5,3_6} )

inherit ros-cmake

DESCRIPTION="flexbe_testing provides a framework for unit testing states."
HOMEPAGE="http://ros.org/wiki/flexbe_testing"
SRC_URI="https://github.com/FlexBE/flexbe_behavior_engine-release/archive/release/kinetic/${PN}/1.2.2-1.tar.gz -> ${PN}-kinetic-release-${PV}.tar.gz"

LICENSE="BSD"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
IUSE="test"
RDEPEND="
	ros-kinetic/flexbe_core
	ros-kinetic/flexbe_msgs
	ros-kinetic/rospy
	ros-kinetic/smach_ros
	test? ( ros-kinetic/rosunit )
	test? ( ros-kinetic/std_msgs )
"
DEPEND="${RDEPEND}
	ros-kinetic/catkin
	ros-kinetic/rostest
"

SLOT="0"
ROS_DISTRO="kinetic"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
