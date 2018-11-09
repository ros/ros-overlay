# Copyright 2018 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{2_7,3_5,3_6} )

inherit ros-cmake

DESCRIPTION="The nodelet package is designed to provide a way to run multiple\
	algor[...]"
HOMEPAGE="http://ros.org/wiki/nodelet"
SRC_URI="https://github.com/ros-gbp/${PN}_core-release/archive/release/melodic/${PN}/1.9.16-0.tar.gz -> ${PN}-melodic-release-${PV}.tar.gz"

LICENSE="BSD"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
RDEPEND="
	ros-melodic/bondcpp
	ros-melodic/message_runtime
	ros-melodic/pluginlib
	ros-melodic/rosconsole
	ros-melodic/roscpp
	ros-melodic/rospy
	ros-melodic/std_msgs
	dev-libs/boost
	dev-libs/ossp-uuid
"
DEPEND="${RDEPEND}
	ros-melodic/catkin
	ros-melodic/cmake_modules
	ros-melodic/message_generation
"

SLOT="0"
ROS_DISTRO="melodic"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
