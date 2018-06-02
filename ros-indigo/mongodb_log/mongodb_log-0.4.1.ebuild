# Copyright 2018 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{2_7,3_5} )

inherit ros-cmake

DESCRIPTION="The mongodb_log package"
HOMEPAGE="http://ros.org/wiki/mongodb_log"
SRC_URI="https://github.com/strands-project-releases/mongodb_store/archive/release/indigo/${PN}/0.4.1-0.tar.gz -> ${PN}-indigo-release-${PV}.tar.gz"

LICENSE="GPL-2"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
RDEPEND="
	ros-indigo/libmongocxx_ros
	ros-indigo/mongodb_store
	ros-indigo/rosgraph
	ros-indigo/roslib
	ros-indigo/rospy
	ros-indigo/rostopic
	ros-indigo/sensor_msgs
	ros-indigo/tf
	dev-python/pymongo
"
DEPEND="${RDEPEND}
	ros-indigo/catkin
	dev-libs/openssl
"

SLOT="0"
ROS_DISTRO="indigo"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
