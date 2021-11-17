# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=7
PYTHON_COMPAT=( python{3_8,3_9,3_10} )

inherit ros-cmake

DESCRIPTION="common_msgs contains messages that are widely used by other ROS packages.\
[...]"
HOMEPAGE="http://wiki.ros.org/common_msgs"
SRC_URI="https://github.com/ros-gbp/${PN}-release/archive/release/noetic/${PN}/1.13.1-1.tar.gz -> ${PN}-noetic-release-${PV}.tar.gz"

LICENSE="BSD"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
RDEPEND="
	ros-noetic/actionlib_msgs
	ros-noetic/diagnostic_msgs
	ros-noetic/geometry_msgs
	ros-noetic/nav_msgs
	ros-noetic/sensor_msgs
	ros-noetic/shape_msgs
	ros-noetic/stereo_msgs
	ros-noetic/trajectory_msgs
	ros-noetic/visualization_msgs
"
DEPEND="${RDEPEND}
	ros-noetic/catkin
"

SLOT="0"
ROS_DISTRO="noetic"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
