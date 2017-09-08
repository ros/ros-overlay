# Copyright 2017 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{2_7,3_5} )

inherit ros-cmake

DESCRIPTION="Assorted filters designed to operate on 2D planar laser scanners,\
	whic[...]"
HOMEPAGE="http://ros.org/wiki/laser_filters"
SRC_URI="https://github.com/ros-gbp/laser_filters-release/archive/release/lunar/laser_filters/1.8.5-0.tar.gz -> ${PN}-lunar-release-${PV}.tar.gz"

LICENSE="BSD"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
RDEPEND="
	ros-lunar/angles
	ros-lunar/filters
	ros-lunar/laser_geometry
	ros-lunar/message_filters
	ros-lunar/pluginlib
	ros-lunar/roscpp
	ros-lunar/sensor_msgs
	ros-lunar/tf
"
DEPEND="${RDEPEND}
	ros-lunar/catkin
	ros-lunar/rostest
"

SLOT="0"
ROS_DISTRO="lunar"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
