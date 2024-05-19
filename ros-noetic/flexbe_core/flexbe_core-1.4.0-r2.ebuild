# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=7
PYTHON_COMPAT=( python{3_8,3_9,3_10} )

inherit ros-cmake

DESCRIPTION="flexbe_core provides the core components for the FlexBE behavior engine."
HOMEPAGE="http://ros.org/wiki/flexbe_core"
SRC_URI="https://github.com/flexbe/flexbe_behavior_engine-release/archive/release/noetic/${PN}/1.4.0-2.tar.gz -> ${PN}-noetic-release-${PV}.tar.gz"

LICENSE="BSD"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
RDEPEND="
	ros-noetic/diagnostic_msgs
	ros-noetic/flexbe_msgs
	ros-noetic/rospy
	ros-noetic/rostest
	ros-noetic/tf
"
DEPEND="${RDEPEND}
	ros-noetic/catkin
	dev-python/setuptools
	dev-python/setuptools
"

SLOT="0"
ROS_DISTRO="noetic"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
