# Copyright 2017 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{2_7,3_5} )

inherit ros-cmake

DESCRIPTION="'Assorted filters designed to operate on 2D planar laser scanners,
	which use '"
HOMEPAGE="http://ros.org/wiki/laser_filters"
SRC_URI="https://github.com/ros-gbp/laser_filters-release/archive/release/indigo/laser_filters/1.8.3-1.tar.gz -> ${PN}-release-${PV}.tar.gz"

LICENSE="BSD"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
RDEPEND="
	ros-indigo/angles
	ros-indigo/filters
	ros-indigo/laser_geometry
	ros-indigo/message_filters
	ros-indigo/pluginlib
	ros-indigo/roscpp
	ros-indigo/sensor_msgs
	ros-indigo/tf
"
DEPEND="${RDEPEND}
	ros-indigo/catkin
	ros-indigo/rostest
"

SLOT="0"
ROS_DISTRO="indigo"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"

