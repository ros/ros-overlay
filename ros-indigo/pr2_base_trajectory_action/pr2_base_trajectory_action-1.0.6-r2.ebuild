# Copyright 2017 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{2_7,3_5} )

inherit ros-cmake

DESCRIPTION="pr2_base_trajectory_action is a node that exposes and action	 interface to m"
HOMEPAGE="http://ros.org/wiki/pr2_base_trajectory_action"
SRC_URI="https://github.com/tork-a/jsk_robot-release/archive/release/indigo/pr2_base_trajectory_action/1.0.6-2.tar.gz -> ${PN}-release-${PV}.tar.gz"

LICENSE="BSD"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
RDEPEND="
	ros-indigo/actionlib
	ros-indigo/actionlib_msgs
	ros-indigo/angles
	ros-indigo/geometry_msgs
	ros-indigo/nav_msgs
	ros-indigo/pr2_controllers_msgs
	ros-indigo/pr2_mechanism_model
	ros-indigo/roscpp
	ros-indigo/trajectory_msgs
"
DEPEND="${RDEPEND}
	ros-indigo/catkin
"

SLOT="0"
ROS_DISTRO="indigo"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"

