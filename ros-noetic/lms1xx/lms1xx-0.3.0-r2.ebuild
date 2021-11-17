# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=7
PYTHON_COMPAT=( python{3_8,3_9,3_10} )

inherit ros-cmake

DESCRIPTION="The lms1xx package contains a basic ROS driver for the SICK LMS1xx line of [...]"
HOMEPAGE="http://ros.org/wiki/LMS1xx"
SRC_URI="https://github.com/clearpath-gbp/${PN}-release/archive/release/noetic/${PN}/0.3.0-2.tar.gz -> ${PN}-noetic-release-${PV}.tar.gz"

LICENSE="LGPL-2"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
IUSE="test"
RDEPEND="
	ros-noetic/rosconsole_bridge
	ros-noetic/roscpp
	ros-noetic/roscpp_serialization
	ros-noetic/sensor_msgs
	test? ( ros-noetic/roslaunch )
	test? ( ros-noetic/roslint )
	test? ( ros-noetic/rosunit )
"
DEPEND="${RDEPEND}
	ros-noetic/catkin
"

SLOT="0"
ROS_DISTRO="noetic"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
