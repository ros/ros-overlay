# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{2_7,3_5,3_6} )

inherit ros-cmake

DESCRIPTION="A package to support MongoDB-based storage and analysis for data from a ROS[...]"
HOMEPAGE="http://www.ros.org/wiki/mongodb_store"
SRC_URI="https://github.com/strands-project-releases/${PN}/archive/release/kinetic/${PN}/0.4.5-1.tar.gz -> ${PN}-kinetic-release-${PV}.tar.gz"

LICENSE="MIT"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
RDEPEND="
	ros-kinetic/geometry_msgs
	ros-kinetic/libmongocxx_ros
	ros-kinetic/mongodb_store_msgs
	ros-kinetic/roscpp
	ros-kinetic/rospy
	ros-kinetic/std_msgs
	ros-kinetic/std_srvs
	ros-kinetic/topic_tools
	dev-db/mongodb
	dev-python/pymongo
"
DEPEND="${RDEPEND}
	ros-kinetic/catkin
	ros-kinetic/message_generation
	ros-kinetic/rostest
	dev-libs/openssl
	dev-python/catkin_pkg
"

SLOT="0"
ROS_DISTRO="kinetic"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
