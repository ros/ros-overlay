# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{2_7,3_5,3_6} )

inherit ros-cmake

DESCRIPTION=""
HOMEPAGE="https://wiki.ros.org"
SRC_URI="https://github.com/ros-gbp/navigation_experimental-release/archive/release/lunar/${PN}/0.2.1-0.tar.gz -> ${PN}-lunar-release-${PV}.tar.gz"

LICENSE="LGPL-2"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
RDEPEND="
	ros-lunar/actionlib
	ros-lunar/angles
	ros-lunar/base_local_planner
	ros-lunar/costmap_2d
	ros-lunar/filters
	ros-lunar/geometry_msgs
	ros-lunar/message_filters
	ros-lunar/move_base_msgs
	ros-lunar/pluginlib
	ros-lunar/roscpp
	ros-lunar/roslib
	ros-lunar/sensor_msgs
	ros-lunar/tf
	dev-cpp/eigen
"
DEPEND="${RDEPEND}
	ros-lunar/catkin
"

SLOT="0"
ROS_DISTRO="lunar"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
