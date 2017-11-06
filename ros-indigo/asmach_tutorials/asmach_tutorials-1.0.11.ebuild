# Copyright 2017 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{2_7,3_5} )

inherit ros-cmake

DESCRIPTION="This package containes numerous examples of how to use SMACH. See the examp[...]"
HOMEPAGE="http://ros.org/wiki/smach_tutorials"
SRC_URI="https://github.com/TheDash/linux_networking-release/archive/release/indigo/asmach_tutorials/1.0.11-0.tar.gz -> ${PN}-indigo-release-${PV}.tar.gz"

LICENSE="BSD"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
RDEPEND="
	ros-indigo/actionlib
	ros-indigo/actionlib_msgs
	ros-indigo/asmach
	ros-indigo/rospy
	ros-indigo/smach_ros
	ros-indigo/turtlesim
"
DEPEND="${RDEPEND}
	ros-indigo/catkin
	ros-indigo/message_generation
"

SLOT="0"
ROS_DISTRO="indigo"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
