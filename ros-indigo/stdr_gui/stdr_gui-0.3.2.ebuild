# Copyright 2017 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{2_7,3_5} )

inherit ros-cmake

DESCRIPTION="'A gui in Qt for visualizing purposes in STDR Simulator.'"
HOMEPAGE="https://wiki.ros.org"
SRC_URI="https://github.com/stdr-simulator-ros-pkg/stdr_simulator-release/archive/release/indigo/stdr_gui/0.3.2-0.tar.gz -> ${PN}-release-${PV}.tar.gz"

LICENSE="GPL-3"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
RDEPEND="
	ros-indigo/nav_msgs
	ros-indigo/roscpp
	ros-indigo/roslib
	ros-indigo/sensor_msgs
	ros-indigo/stdr_msgs
	ros-indigo/stdr_parser
	ros-indigo/stdr_robot
	ros-indigo/stdr_server
	ros-indigo/tf
	dev-qt/qtcore:4
"
DEPEND="${RDEPEND}
	ros-indigo/catkin
	dev-qt/qtcore:4
"

SLOT="0"
ROS_DISTRO="indigo"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"

