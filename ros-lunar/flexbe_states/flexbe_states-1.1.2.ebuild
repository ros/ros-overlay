# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{2_7,3_5,3_6} )

inherit ros-cmake

DESCRIPTION="flexbe_states provides a collection of predefined states.\
	 Feel free t[...]"
HOMEPAGE="http://ros.org/wiki/flexbe_states"
SRC_URI="https://github.com/FlexBE/flexbe_behavior_engine-release/archive/release/lunar/${PN}/1.1.2-0.tar.gz -> ${PN}-lunar-release-${PV}.tar.gz"

LICENSE="BSD"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
IUSE="test"
RDEPEND="
	ros-lunar/flexbe_msgs
	ros-lunar/flexbe_testing
	ros-lunar/rosbag
	ros-lunar/rospy
	ros-lunar/smach_ros
	test? ( ros-lunar/geometry_msgs )
"
DEPEND="${RDEPEND}
	ros-lunar/catkin
	ros-lunar/rostest
"

SLOT="0"
ROS_DISTRO="lunar"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
