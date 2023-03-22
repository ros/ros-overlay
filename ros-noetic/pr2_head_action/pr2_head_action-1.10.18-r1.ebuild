# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{2_7,3_5,3_6} )

inherit ros-cmake

DESCRIPTION="The PR2 head action is a node that provides an action interface for\
  poin[...]"
HOMEPAGE="http://ros.org/wiki/pr2_head_action"
SRC_URI="https://github.com/pr2-gbp/pr2_controllers-release/archive/release/noetic/${PN}/1.10.18-1.tar.gz -> ${PN}-noetic-release-${PV}.tar.gz"

LICENSE="BSD"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
RDEPEND="
	ros-noetic/actionlib
	ros-noetic/geometry_msgs
	ros-noetic/kdl_parser
	ros-noetic/message_filters
	ros-noetic/pr2_controllers_msgs
	ros-noetic/roscpp
	ros-noetic/sensor_msgs
	ros-noetic/tf
	ros-noetic/tf_conversions
	ros-noetic/trajectory_msgs
	sci-libs/orocos_kdl
"
DEPEND="${RDEPEND}
	ros-noetic/catkin
	sci-libs/orocos_kdl
"

SLOT="0"
ROS_DISTRO="noetic"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
