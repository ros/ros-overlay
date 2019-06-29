# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{2_7,3_5,3_6} )

inherit ros-cmake

DESCRIPTION="The mongodb_log package"
HOMEPAGE="http://ros.org/wiki/mongodb_log"
SRC_URI="https://github.com/strands-project-releases/mongodb_store/archive/release/kinetic/${PN}/0.4.5-1.tar.gz -> ${PN}-kinetic-release-${PV}.tar.gz"

LICENSE="GPL-2"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
RDEPEND="
	ros-kinetic/libmongocxx_ros
	ros-kinetic/mongodb_store
	ros-kinetic/rosgraph
	ros-kinetic/roslib
	ros-kinetic/rospy
	ros-kinetic/rostopic
	ros-kinetic/sensor_msgs
	ros-kinetic/tf
	dev-python/pymongo
"
DEPEND="${RDEPEND}
	ros-kinetic/catkin
	dev-libs/openssl
"

SLOT="0"
ROS_DISTRO="kinetic"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
