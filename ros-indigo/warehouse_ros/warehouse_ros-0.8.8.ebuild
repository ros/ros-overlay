# Copyright 2017 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{2_7,3_5} )

inherit ros-cmake

DESCRIPTION="'Persistent storage of ROS data using MongoDB'"
HOMEPAGE="http://ros.org/wiki/warehouse_ros"
SRC_URI="https://github.com/ros-gbp/warehouse_ros-release/archive/release/indigo/warehouse_ros/0.8.8-0.tar.gz -> ${PN}-release-${PV}.tar.gz"

LICENSE="BSD"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
RDEPEND="
	ros-indigo/geometry_msgs
	ros-indigo/roscpp
	ros-indigo/rostime
	ros-indigo/std_msgs
	net-misc/curl
	dev-libs/openssl
	dev-db/mongodb
	dev-python/pymongo
"
DEPEND="${RDEPEND}
	ros-indigo/catkin
	ros-indigo/rospy
	ros-indigo/rostest
	dev-db/mongodb
"

SLOT="0"
ROS_DISTRO="indigo"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"

