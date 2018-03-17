# Copyright 2018 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{2_7,3_5} )

inherit ros-cmake

DESCRIPTION="This unary stack contains the dynamic_reconfigure package which provides a [...]"
HOMEPAGE="http://ros.org/wiki/dynamic_reconfigure"
SRC_URI="https://github.com/ros-gbp/${PN}-release/archive/release/indigo/${PN}/1.5.49-0.tar.gz -> ${PN}-indigo-release-${PV}.tar.gz"

LICENSE="BSD"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
RDEPEND="
	ros-indigo/message_runtime
	ros-indigo/roscpp
	ros-indigo/roslib
	ros-indigo/rospy
	ros-indigo/rosservice
	ros-indigo/std_msgs
	dev-libs/boost
"
DEPEND="${RDEPEND}
	ros-indigo/catkin
	ros-indigo/message_generation
	ros-indigo/roscpp_serialization
	ros-indigo/rostest
"

SLOT="0"
ROS_DISTRO="indigo"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
