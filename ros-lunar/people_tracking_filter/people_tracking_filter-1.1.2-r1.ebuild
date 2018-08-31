# Copyright 2018 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{2_7,3_5,3_6} )

inherit ros-cmake

DESCRIPTION="A collection of filtering tools for tracking people\'s locations"
HOMEPAGE="http://ros.org/wiki/people_tracking_filter"
SRC_URI="https://github.com/OSUrobotics/people-release/archive/release/lunar/${PN}/1.1.2-1.tar.gz -> ${PN}-lunar-release-${PV}.tar.gz"

LICENSE="BSD"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
RDEPEND="
	ros-lunar/bfl
	ros-lunar/geometry_msgs
	ros-lunar/message_filters
	ros-lunar/people_msgs
	ros-lunar/roscpp
	ros-lunar/sensor_msgs
	ros-lunar/std_msgs
	ros-lunar/tf
"
DEPEND="${RDEPEND}
	ros-lunar/catkin
"

SLOT="0"
ROS_DISTRO="lunar"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
