# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=7
PYTHON_COMPAT=( python{3_8,3_9,3_10} )

inherit ros-cmake

DESCRIPTION="The nodelet package is designed to provide a way to run multiple\
	algor[...]"
HOMEPAGE="http://ros.org/wiki/nodelet"
SRC_URI="https://github.com/ros-gbp/${PN}_core-release/archive/release/noetic/${PN}/1.10.2-1.tar.gz -> ${PN}-noetic-release-${PV}.tar.gz"

LICENSE="BSD"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
RDEPEND="
	ros-noetic/bondcpp
	ros-noetic/message_runtime
	ros-noetic/pluginlib
	ros-noetic/rosconsole
	ros-noetic/roscpp
	ros-noetic/rospy
	ros-noetic/std_msgs
	dev-libs/boost[python]
	dev-libs/ossp-uuid
"
DEPEND="${RDEPEND}
	ros-noetic/catkin
	ros-noetic/cmake_modules
	ros-noetic/message_generation
"

SLOT="0"
ROS_DISTRO="noetic"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
