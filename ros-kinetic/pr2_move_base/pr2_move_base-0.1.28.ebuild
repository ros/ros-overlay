# Copyright 2018 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{2_7,3_5} )

inherit ros-cmake

DESCRIPTION="pr2_move_base"
HOMEPAGE="http://ros.org/wiki/pr2_move_base"
SRC_URI="https://github.com/pr2-gbp/pr2_navigation-release/archive/release/kinetic/${PN}/0.1.28-0.tar.gz -> ${PN}-kinetic-release-${PV}.tar.gz"

LICENSE="BSD"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
RDEPEND="
	ros-kinetic/actionlib
	ros-kinetic/actionlib_msgs
	ros-kinetic/dynamic_reconfigure
	ros-kinetic/move_base_msgs
	ros-kinetic/pr2_common_action_msgs
	ros-kinetic/pr2_controllers_msgs
	ros-kinetic/pr2_msgs
	ros-kinetic/rospy
"
DEPEND="${RDEPEND}
	ros-kinetic/catkin
"

SLOT="0"
ROS_DISTRO="kinetic"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
