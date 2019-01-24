# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{2_7,3_5,3_6} )

inherit ros-cmake

DESCRIPTION="Converts between Python dictionaries and JSON to rospy messages."
HOMEPAGE="http://ros.org/wiki/rospy_message_converter"
SRC_URI="https://github.com/uos-gbp/${PN}-release/archive/release/indigo/${PN}/0.5.0-0.tar.gz -> ${PN}-indigo-release-${PV}.tar.gz"

LICENSE="BSD"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
IUSE="test"
RDEPEND="
	ros-indigo/message_runtime
	ros-indigo/roslib
	ros-indigo/rospy
	ros-indigo/std_msgs
	test? ( ros-indigo/rosunit )
	test? ( ros-indigo/std_srvs )
"
DEPEND="${RDEPEND}
	ros-indigo/catkin
	ros-indigo/message_generation
"

SLOT="0"
ROS_DISTRO="indigo"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
