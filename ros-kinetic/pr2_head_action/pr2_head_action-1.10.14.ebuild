# Copyright 2018 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{2_7,3_5} )

inherit ros-cmake

DESCRIPTION="The PR2 head action is a node that provides an action interface for\
  poin[...]"
HOMEPAGE="http://ros.org/wiki/pr2_head_action"
SRC_URI="https://github.com/pr2-gbp/pr2_controllers-release/archive/release/kinetic/${PN}/1.10.14-0.tar.gz -> ${PN}-kinetic-release-${PV}.tar.gz"

LICENSE="BSD"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
RDEPEND="
	ros-kinetic/actionlib
	ros-kinetic/geometry_msgs
	ros-kinetic/kdl_parser
	ros-kinetic/message_filters
	ros-kinetic/orocos_kdl
	ros-kinetic/pr2_controllers_msgs
	ros-kinetic/roscpp
	ros-kinetic/sensor_msgs
	ros-kinetic/tf
	ros-kinetic/tf_conversions
	ros-kinetic/trajectory_msgs
"
DEPEND="${RDEPEND}
	ros-kinetic/catkin
"

SLOT="0"
ROS_DISTRO="kinetic"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
