# Copyright 2017 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{2_7,3_5} )

inherit ros-cmake

DESCRIPTION="A collection of conversion function for extracting numpy arrays from messages"
HOMEPAGE="https://wiki.ros.org"
SRC_URI="https://github.com/eric-wieser/ros_numpy-release/archive/release/indigo/ros_numpy/0.0.2-0.tar.gz -> ${PN}-indigo-release-${PV}.tar.gz"

LICENSE="MIT"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
RDEPEND="
	ros-indigo/geometry_msgs
	ros-indigo/nav_msgs
	ros-indigo/rospy
	ros-indigo/sensor_msgs
	ros-indigo/tf
	dev-python/numpy
"
DEPEND="${RDEPEND}
	ros-indigo/catkin
"

SLOT="0"
ROS_DISTRO="indigo"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
