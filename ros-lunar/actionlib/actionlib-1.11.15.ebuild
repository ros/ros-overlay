# Copyright 2018 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{2_7,3_5,3_6} )

inherit ros-cmake

DESCRIPTION="The actionlib stack provides a standardized interface for\
	interfacing [...]"
HOMEPAGE="http://www.ros.org/wiki/actionlib"
SRC_URI="https://github.com/ros-gbp/${PN}-release/archive/release/lunar/${PN}/1.11.15-0.tar.gz -> ${PN}-lunar-release-${PV}.tar.gz"

LICENSE="BSD"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
IUSE="test"
RDEPEND="
	ros-lunar/actionlib_msgs
	ros-lunar/message_runtime
	ros-lunar/roscpp
	ros-lunar/roslib
	ros-lunar/rospy
	ros-lunar/rostest
	ros-lunar/rostopic
	ros-lunar/std_msgs
	test? ( ros-lunar/rosnode )
	dev-libs/boost
	dev-python/wxpython
"
DEPEND="${RDEPEND}
	ros-lunar/catkin
	ros-lunar/message_generation
"

SLOT="0"
ROS_DISTRO="lunar"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
