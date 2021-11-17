# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=7
PYTHON_COMPAT=( python{3_8,3_9,3_10} )

inherit ros-cmake

DESCRIPTION="Move the pr2 arm using inverse kinematics"
HOMEPAGE="http://ros.org/wiki/pr2_arm_move_ik"
SRC_URI="https://github.com/pr2-gbp/pr2_common_actions-release/archive/release/noetic/${PN}/0.0.12-1.tar.gz -> ${PN}-noetic-release-${PV}.tar.gz"

LICENSE="BSD"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
RDEPEND="
	ros-noetic/actionlib
	ros-noetic/actionlib_msgs
	ros-noetic/geometry_msgs
	ros-noetic/pr2_common_action_msgs
	ros-noetic/pr2_controllers_msgs
	ros-noetic/roscpp
	ros-noetic/tf
	ros-noetic/urdf
"
DEPEND="${RDEPEND}
	ros-noetic/catkin
"

SLOT="0"
ROS_DISTRO="noetic"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
