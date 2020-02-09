# Copyright 2020 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{2_7,3_5,3_6} )

inherit ros-cmake

DESCRIPTION="The nodelet package is designed to provide a way to run multiple\
	algor[...]"
HOMEPAGE="http://ros.org/wiki/nodelet"
SRC_URI="https://github.com/ros-gbp/${PN}_core-release/archive/release/kinetic/${PN}/1.9.14-0.tar.gz -> ${PN}-kinetic-release-${PV}.tar.gz"

LICENSE="BSD"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
RDEPEND="
	ros-kinetic/bondcpp
	ros-kinetic/message_runtime
	ros-kinetic/pluginlib
	ros-kinetic/rosconsole
	ros-kinetic/roscpp
	ros-kinetic/rospy
	ros-kinetic/std_msgs
	dev-libs/boost[python]
	dev-libs/ossp-uuid
"
DEPEND="${RDEPEND}
	ros-kinetic/catkin
	ros-kinetic/cmake_modules
	ros-kinetic/message_generation
"

SLOT="0"
ROS_DISTRO="kinetic"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
