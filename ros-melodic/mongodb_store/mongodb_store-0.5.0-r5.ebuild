# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{2_7,3_5,3_6} )

inherit ros-cmake

DESCRIPTION="A package to support MongoDB-based storage and analysis for data from a ROS[...]"
HOMEPAGE="http://www.ros.org/wiki/mongodb_store"
SRC_URI="https://github.com/strands-project-releases/${PN}/archive/release/melodic/${PN}/0.5.0-5.tar.gz -> ${PN}-melodic-release-${PV}.tar.gz"

LICENSE="MIT"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
RDEPEND="
	ros-melodic/geometry_msgs
	ros-melodic/mongodb_store_msgs
	ros-melodic/roscpp
	ros-melodic/rospy
	ros-melodic/std_msgs
	ros-melodic/std_srvs
	ros-melodic/topic_tools
	dev-db/mongodb
	dev-python/pymongo
"
DEPEND="${RDEPEND}
	ros-melodic/catkin
	ros-melodic/message_generation
	ros-melodic/rostest
	dev-libs/openssl
	dev-python/catkin_pkg
"

SLOT="0"
ROS_DISTRO="melodic"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
