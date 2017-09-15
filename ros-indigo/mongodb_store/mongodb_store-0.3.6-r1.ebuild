# Copyright 2017 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{2_7,3_5} )

inherit ros-cmake

DESCRIPTION="A package to support MongoDB-based storage and analysis for data from a ROS[...]"
HOMEPAGE="https://wiki.ros.org"
SRC_URI="https://github.com/strands-project-releases/mongodb_store/archive/release/indigo/mongodb_store/0.3.6-1.tar.gz -> ${PN}-indigo-release-${PV}.tar.gz"

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
