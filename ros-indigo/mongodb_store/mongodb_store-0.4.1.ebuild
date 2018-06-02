# Copyright 2018 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{2_7,3_5} )

inherit ros-cmake

DESCRIPTION="A package to support MongoDB-based storage and analysis for data from a ROS[...]"
HOMEPAGE="http://www.ros.org/wiki/mongodb_store"
SRC_URI="https://github.com/strands-project-releases/${PN}/archive/release/indigo/${PN}/0.4.1-0.tar.gz -> ${PN}-indigo-release-${PV}.tar.gz"

LICENSE="MIT"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
RDEPEND="
	ros-indigo/geometry_msgs
	ros-indigo/libmongocxx_ros
	ros-indigo/mongodb_store_msgs
	ros-indigo/roscpp
	ros-indigo/rospy
	ros-indigo/std_msgs
	ros-indigo/std_srvs
	ros-indigo/topic_tools
	dev-db/mongodb
	dev-python/pymongo
"
DEPEND="${RDEPEND}
	ros-indigo/catkin
	ros-indigo/message_generation
	ros-indigo/rostest
	dev-libs/openssl
	dev-python/catkin_pkg
"

SLOT="0"
ROS_DISTRO="indigo"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
