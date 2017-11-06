# Copyright 2017 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{2_7,3_5} )

inherit ros-cmake

DESCRIPTION="Class definitions and a few convenience functions for interfacing\
	with[...]"
HOMEPAGE="https://wiki.ros.org"
SRC_URI="https://github.com/ros-gbp/household_objects_database-release/archive/release/indigo/household_objects_database/0.1.4-0.tar.gz -> ${PN}-indigo-release-${PV}.tar.gz"

LICENSE="( KEYWORDS="~x86 ~amd64 ~arm ~arm64"
RDEPEND="
	ros-indigo/actionlib
	ros-indigo/household_objects_database_msgs
	ros-indigo/manipulation_msgs
	ros-indigo/roscpp
	ros-indigo/rosgraph
	ros-indigo/roslib
	ros-indigo/rospy
	ros-indigo/rosservice
	ros-indigo/sql_database
"
DEPEND="${RDEPEND}
	ros-indigo/catkin
	ros-indigo/tf
"

SLOT="0"
ROS_DISTRO="indigo"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
