# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{2_7,3_5,3_6} )

inherit ros-cmake

DESCRIPTION="flexbe_states provides a collection of predefined states.\
	 Feel free t[...]"
HOMEPAGE="http://ros.org/wiki/flexbe_states"
SRC_URI="https://github.com/FlexBE/flexbe_behavior_engine-release/archive/release/indigo/${PN}/1.1.2-0.tar.gz -> ${PN}-indigo-release-${PV}.tar.gz"

LICENSE="BSD"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
IUSE="test"
RDEPEND="
	ros-indigo/flexbe_msgs
	ros-indigo/flexbe_testing
	ros-indigo/rosbag
	ros-indigo/rospy
	ros-indigo/smach_ros
	test? ( ros-indigo/geometry_msgs )
"
DEPEND="${RDEPEND}
	ros-indigo/catkin
	ros-indigo/rostest
"

SLOT="0"
ROS_DISTRO="indigo"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
