# Copyright 2017 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{2_7,3_5} )

inherit ros-cmake

DESCRIPTION="'An implementation of ROS in pure-Java with Android support.'"
HOMEPAGE="http://ros.org/wiki/rosjava_core"
SRC_URI="https://github.com/rosjava-release/rosjava_core-release/archive/release/indigo/rosjava_core/0.2.2-0.tar.gz -> ${PN}-release-${PV}.tar.gz"

LICENSE="Apache-2.0"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
RDEPEND="
"
DEPEND="${RDEPEND}
	ros-indigo/catkin
	ros-indigo/geometry_msgs
	ros-indigo/nav_msgs
	ros-indigo/rosgraph_msgs
	ros-indigo/rosjava_bootstrap
	ros-indigo/rosjava_build_tools
	ros-indigo/rosjava_messages
	ros-indigo/rosjava_test_msgs
	ros-indigo/sensor_msgs
	ros-indigo/tf2_msgs
"

SLOT="0"
ROS_DISTRO="indigo"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"

