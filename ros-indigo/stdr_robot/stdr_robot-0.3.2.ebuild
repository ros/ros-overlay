# Copyright 2017 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{2_7,3_5} )

inherit ros-cmake

DESCRIPTION="Provides robot, sensor implementation, using nodelets for stdr_server to lo[...]"
HOMEPAGE="https://wiki.ros.org"
SRC_URI="https://github.com/stdr-simulator-ros-pkg/stdr_simulator-release/archive/release/indigo/stdr_robot/0.3.2-0.tar.gz -> ${PN}-indigo-release-${PV}.tar.gz"

LICENSE="GPL-3"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
RDEPEND="
	ros-indigo/actionlib
	ros-indigo/geometry_msgs
	ros-indigo/nav_msgs
	ros-indigo/nodelet
	ros-indigo/roscpp
	ros-indigo/sensor_msgs
	ros-indigo/stdr_msgs
	ros-indigo/stdr_parser
	ros-indigo/stdr_server
	ros-indigo/tf
"
DEPEND="${RDEPEND}
	ros-indigo/catkin
"

SLOT="0"
ROS_DISTRO="indigo"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
