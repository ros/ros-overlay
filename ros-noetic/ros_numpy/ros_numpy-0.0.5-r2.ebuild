# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=7
PYTHON_COMPAT=( python{3_8,3_9,3_10} )

inherit ros-cmake

DESCRIPTION="A collection of conversion function for extracting numpy arrays from messages"
HOMEPAGE="http://wiki.ros.org/ros_numpy"
SRC_URI="https://github.com/eric-wieser/${PN}-release/archive/release/noetic/${PN}/0.0.5-2.tar.gz -> ${PN}-noetic-release-${PV}.tar.gz"

LICENSE="MIT"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
RDEPEND="
	ros-noetic/geometry_msgs
	ros-noetic/nav_msgs
	ros-noetic/rospy
	ros-noetic/sensor_msgs
	ros-noetic/tf
	dev-python/numpy
	dev-python/numpy
"
DEPEND="${RDEPEND}
	ros-noetic/catkin
"

SLOT="0"
ROS_DISTRO="noetic"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
