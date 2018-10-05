# Copyright 2018 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{2_7,3_5,3_6} )

inherit ros-cmake

DESCRIPTION="An application used to systematically record rosbags"
HOMEPAGE="http://www.ros.org/wiki/bagger"
SRC_URI="https://github.com/squarerobot/${PN}-release/archive/release/kinetic/${PN}/0.1.3-2.tar.gz -> ${PN}-kinetic-release-${PV}.tar.gz"

LICENSE="BSD"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
IUSE="test"
RDEPEND="
	ros-kinetic/message_runtime
	ros-kinetic/rosbag
	ros-kinetic/roscpp
	ros-kinetic/rospy
	ros-kinetic/rostest
	ros-kinetic/std_msgs
	test? ( ros-kinetic/geometry_msgs )
	test? ( ros-kinetic/nav_msgs )
"
DEPEND="${RDEPEND}
	ros-kinetic/catkin
	ros-kinetic/message_generation
	ros-kinetic/roslint
"

SLOT="0"
ROS_DISTRO="kinetic"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
