# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=7
PYTHON_COMPAT=( python{3_8,3_9,3_10} )

inherit ros-cmake

DESCRIPTION="Assorted filters designed to operate on 2D planar laser scanners,\
	whic[...]"
HOMEPAGE="http://ros.org/wiki/laser_filters"
SRC_URI="https://github.com/ros-gbp/${PN}-release/archive/release/noetic/${PN}/1.9.0-1.tar.gz -> ${PN}-noetic-release-${PV}.tar.gz"

LICENSE="BSD"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
RDEPEND="
	ros-noetic/angles
	ros-noetic/dynamic_reconfigure
	ros-noetic/filters
	ros-noetic/laser_geometry
	ros-noetic/message_filters
	ros-noetic/nodelet
	ros-noetic/pluginlib
	ros-noetic/roscpp
	ros-noetic/sensor_msgs
	ros-noetic/tf
"
DEPEND="${RDEPEND}
	ros-noetic/catkin
	ros-noetic/rostest
"

SLOT="0"
ROS_DISTRO="noetic"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
