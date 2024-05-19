# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=7
PYTHON_COMPAT=( python{3_8,3_9,3_10} )

inherit ros-cmake

DESCRIPTION="The mongodb_log package"
HOMEPAGE="http://ros.org/wiki/mongodb_log"
SRC_URI="https://github.com/strands-project-releases/mongodb_store/archive/release/noetic/${PN}/0.6.0-1.tar.gz -> ${PN}-noetic-release-${PV}.tar.gz"

LICENSE="GPL-2"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
RDEPEND="
	ros-noetic/mongodb_store
	ros-noetic/rosgraph
	ros-noetic/roslib
	ros-noetic/rospy
	ros-noetic/rostopic
	ros-noetic/sensor_msgs
	ros-noetic/tf
	dev-python/pymongo
	dev-python/pymongo
"
DEPEND="${RDEPEND}
	ros-noetic/catkin
	dev-libs/openssl
"

SLOT="0"
ROS_DISTRO="noetic"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
