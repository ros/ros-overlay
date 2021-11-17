# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=7
PYTHON_COMPAT=( python{3_8,3_9,3_10} )

inherit ros-cmake

DESCRIPTION="Various actions which help in moving the arms of the PR2\
	or getting da[...]"
HOMEPAGE="http://wiki.ros.org/pr2_common_actions"
SRC_URI="https://github.com/pr2-gbp/${PN}-release/archive/release/noetic/${PN}/0.0.12-1.tar.gz -> ${PN}-noetic-release-${PV}.tar.gz"

LICENSE="BSD"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
RDEPEND="
	ros-noetic/joint_trajectory_action_tools
	ros-noetic/joint_trajectory_generator
	ros-noetic/pr2_arm_move_ik
	ros-noetic/pr2_common_action_msgs
	ros-noetic/pr2_tilt_laser_interface
	ros-noetic/pr2_tuck_arms_action
"
DEPEND="${RDEPEND}
	ros-noetic/catkin
"

SLOT="0"
ROS_DISTRO="noetic"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
