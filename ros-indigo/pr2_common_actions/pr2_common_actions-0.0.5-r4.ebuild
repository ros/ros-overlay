# Copyright 2017 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{2_7,3_5} )

inherit ros-cmake

DESCRIPTION="'Various actions which help in moving the arms of the PR2
	or getting data fro'"
HOMEPAGE="https://wiki.ros.org"
SRC_URI="https://github.com/pr2-gbp/pr2_common_actions-release/archive/release/indigo/pr2_common_actions/0.0.5-4.tar.gz -> ${PN}-release-${PV}.tar.gz"

LICENSE="BSD"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
RDEPEND="
	ros-indigo/joint_trajectory_action_tools
	ros-indigo/joint_trajectory_generator
	ros-indigo/pr2_arm_move_ik
	ros-indigo/pr2_common_action_msgs
	ros-indigo/pr2_tilt_laser_interface
	ros-indigo/pr2_tuck_arms_action
"
DEPEND="${RDEPEND}
	ros-indigo/catkin
"

SLOT="0"
ROS_DISTRO="indigo"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"

