# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{2_7,3_5,3_6} )

inherit ros-cmake

DESCRIPTION="Converts between Python dictionaries and JSON to rospy messages."
HOMEPAGE="http://ros.org/wiki/rospy_message_converter"
SRC_URI="https://github.com/uos-gbp/${PN}-release/archive/release/noetic/${PN}/0.5.9-1.tar.gz -> ${PN}-noetic-release-${PV}.tar.gz"

LICENSE="BSD"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
IUSE="test"
RDEPEND="
	ros-noetic/message_runtime
	ros-noetic/roslib
	ros-noetic/rospy
	ros-noetic/std_msgs
	test? ( ros-noetic/rosunit )
	test? ( ros-noetic/std_srvs )
	test? ( dev-python/numpy )
"
DEPEND="${RDEPEND}
	ros-noetic/catkin
	ros-noetic/message_generation
"

SLOT="0"
ROS_DISTRO="noetic"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
