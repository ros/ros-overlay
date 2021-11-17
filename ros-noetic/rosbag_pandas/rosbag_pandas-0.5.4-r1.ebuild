# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=7
PYTHON_COMPAT=( python{3_8,3_9,3_10} )

inherit ros-cmake

DESCRIPTION="Create a Pandas data frame from a ros bag file."
HOMEPAGE="https://wiki.ros.org"
SRC_URI="https://github.com/eurogroep/${PN}-release/archive/release/noetic/${PN}/0.5.4-1.tar.gz -> ${PN}-noetic-release-${PV}.tar.gz"

LICENSE="Apache-2.0"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
RDEPEND="
	ros-noetic/rosbag
	ros-noetic/roslib
	ros-noetic/rospy_message_converter
	dev-python/matplotlib
	dev-python/numpy
	dev-python/pandas
	dev-python/matplotlib
	dev-python/numpy
	dev-python/pandas
"
DEPEND="${RDEPEND}
	ros-noetic/catkin
"

SLOT="0"
ROS_DISTRO="noetic"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
