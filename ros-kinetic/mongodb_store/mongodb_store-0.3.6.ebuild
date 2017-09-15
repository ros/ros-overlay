# Copyright 2017 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{2_7,3_5} )

inherit ros-cmake

DESCRIPTION="A package to support MongoDB-based storage and analysis for data from a ROS[...]"
HOMEPAGE="https://wiki.ros.org"
SRC_URI="https://github.com/strands-project-releases/mongodb_store/archive/release/kinetic/mongodb_store/0.3.6-0.tar.gz -> ${PN}-kinetic-release-${PV}.tar.gz"

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
