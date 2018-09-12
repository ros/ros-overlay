# Copyright 2018 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{2_7,3_5,3_6} )

inherit ros-cmake

DESCRIPTION="An implementation of ROS in pure-Java with Android support."
HOMEPAGE="http://ros.org/wiki/rosjava_core"
SRC_URI="https://github.com/rosjava-release/${PN}-release/archive/release/kinetic/${PN}/0.3.6-0.tar.gz -> ${PN}-kinetic-release-${PV}.tar.gz"

LICENSE="Apache-2.0"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
RDEPEND="
"
DEPEND="${RDEPEND}
	ros-kinetic/catkin
	ros-kinetic/geometry_msgs
	ros-kinetic/nav_msgs
	ros-kinetic/rosgraph_msgs
	ros-kinetic/rosjava_bootstrap
	ros-kinetic/rosjava_build_tools
	ros-kinetic/rosjava_messages
	ros-kinetic/rosjava_test_msgs
	ros-kinetic/sensor_msgs
	ros-kinetic/tf2_msgs
"

SLOT="0"
ROS_DISTRO="kinetic"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
