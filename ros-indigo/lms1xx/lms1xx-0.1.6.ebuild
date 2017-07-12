# Copyright 2017 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{2_7,3_5} )

inherit ros-cmake

DESCRIPTION="The lms1xx package contains a basic ROS driver for the SICK LMS1xx line of LIDAR"
HOMEPAGE="http://ros.org/wiki/LMS1xx"
SRC_URI="https://github.com/clearpath-gbp/lms1xx-release/archive/release/indigo/lms1xx/0.1.6-0.tar.gz -> ${PN}-release-${PV}.tar.gz"

LICENSE="LGPL-2"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
RDEPEND="
	ros-indigo/rosconsole_bridge
	ros-indigo/roscpp
	ros-indigo/roscpp_serialization
	ros-indigo/sensor_msgs
"
DEPEND="${RDEPEND}
	ros-indigo/catkin
"

SLOT="0"
ROS_DISTRO="indigo"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"

