# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{2_7,3_5,3_6} )

inherit ros-cmake

DESCRIPTION="The PR2 head action is a node that provides an action interface for\
  poin[...]"
HOMEPAGE="http://ros.org/wiki/pr2_head_action"
SRC_URI="https://github.com/pr2-gbp/pr2_controllers-release/archive/release/melodic/${PN}/1.10.17-1.tar.gz -> ${PN}-melodic-release-${PV}.tar.gz"

LICENSE="BSD"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
RDEPEND="
	ros-melodic/actionlib
	ros-melodic/geometry_msgs
	ros-melodic/kdl_parser
	ros-melodic/message_filters
	ros-melodic/orocos_kdl
	ros-melodic/pr2_controllers_msgs
	ros-melodic/roscpp
	ros-melodic/sensor_msgs
	ros-melodic/tf
	ros-melodic/tf_conversions
	ros-melodic/trajectory_msgs
"
DEPEND="${RDEPEND}
	ros-melodic/catkin
"

SLOT="0"
ROS_DISTRO="melodic"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
