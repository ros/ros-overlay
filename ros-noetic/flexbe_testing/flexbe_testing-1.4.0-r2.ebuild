# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=7
PYTHON_COMPAT=( python{3_8,3_9,3_10} )

inherit ros-cmake

DESCRIPTION="flexbe_testing provides a framework for unit testing states."
HOMEPAGE="http://ros.org/wiki/flexbe_testing"
SRC_URI="https://github.com/flexbe/flexbe_behavior_engine-release/archive/release/noetic/${PN}/1.4.0-2.tar.gz -> ${PN}-noetic-release-${PV}.tar.gz"

LICENSE="BSD"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
IUSE="test"
RDEPEND="
	ros-noetic/flexbe_core
	ros-noetic/flexbe_msgs
	ros-noetic/rospy
	ros-noetic/rostest
	test? ( ros-noetic/rosunit )
	test? ( ros-noetic/std_msgs )
"
DEPEND="${RDEPEND}
	ros-noetic/catkin
	dev-python/setuptools
	dev-python/setuptools
"

SLOT="0"
ROS_DISTRO="noetic"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
