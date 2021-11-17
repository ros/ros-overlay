# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=7
PYTHON_COMPAT=( python{3_8,3_9,3_10} )

inherit ros-cmake

DESCRIPTION="Provides a set of tools/actions for manipulating the pr2\'s tilting\
	la[...]"
HOMEPAGE="http://ros.org/wiki/pr2_tilt_laser"
SRC_URI="https://github.com/pr2-gbp/pr2_common_actions-release/archive/release/noetic/${PN}/0.0.12-1.tar.gz -> ${PN}-noetic-release-${PV}.tar.gz"

LICENSE="BSD"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
RDEPEND="
	ros-noetic/actionlib
	ros-noetic/actionlib_msgs
	ros-noetic/laser_geometry
	ros-noetic/message_runtime
	ros-noetic/pcl_conversions
	ros-noetic/pcl_ros
	ros-noetic/pr2_msgs
	ros-noetic/roscpp
	ros-noetic/sensor_msgs
	dev-cpp/eigen
"
DEPEND="${RDEPEND}
	ros-noetic/catkin
	ros-noetic/message_generation
"

SLOT="0"
ROS_DISTRO="noetic"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
