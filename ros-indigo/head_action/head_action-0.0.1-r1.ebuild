# Copyright 2017 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{2_7,3_5} )

inherit ros-cmake

DESCRIPTION="'The head action is a node that provides an action interface for
  pointing the h'"
HOMEPAGE="http://ros.org/wiki/head_action"
SRC_URI="https://github.com/pal-gbp/head_action-release/archive/release/indigo/head_action/0.0.1-1.tar.gz -> ${PN}-release-${PV}.tar.gz"

LICENSE="BSD"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
RDEPEND="
	ros-indigo/actionlib
	ros-indigo/control_msgs
	ros-indigo/geometry_msgs
	ros-indigo/kdl_parser
	ros-indigo/orocos_kdl
	ros-indigo/roscpp
	ros-indigo/sensor_msgs
	ros-indigo/tf
	ros-indigo/tf_conversions
	ros-indigo/trajectory_msgs
"
DEPEND="${RDEPEND}
	ros-indigo/catkin
"

SLOT="0"
ROS_DISTRO="indigo"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"

