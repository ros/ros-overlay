# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=7
PYTHON_COMPAT=( python{3_8,3_9,3_10} )

inherit ros-cmake

DESCRIPTION="An application used to systematically record rosbags"
HOMEPAGE="http://www.ros.org/wiki/bagger"
SRC_URI="https://github.com/squarerobot/${PN}-release/archive/release/noetic/${PN}/0.1.4-1.tar.gz -> ${PN}-noetic-release-${PV}.tar.gz"

LICENSE="BSD"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
IUSE="test"
RDEPEND="
	ros-noetic/message_runtime
	ros-noetic/rosbag
	ros-noetic/roscpp
	ros-noetic/rospy
	ros-noetic/rostest
	ros-noetic/std_msgs
	test? ( ros-noetic/geometry_msgs )
	test? ( ros-noetic/nav_msgs )
"
DEPEND="${RDEPEND}
	ros-noetic/catkin
	ros-noetic/message_generation
	ros-noetic/roslint
"

SLOT="0"
ROS_DISTRO="noetic"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
