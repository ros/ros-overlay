# Copyright 2018 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{2_7,3_5,3_6} )

inherit ros-cmake

DESCRIPTION="Various actions which help in moving the arms of the PR2\
	or getting da[...]"
HOMEPAGE="http://wiki.ros.org/pr2_common_actions"
SRC_URI="https://github.com/pr2-gbp/${PN}-release/archive/release/melodic/${PN}/0.0.11-0.tar.gz -> ${PN}-melodic-release-${PV}.tar.gz"

LICENSE="BSD"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
RDEPEND="
	ros-melodic/joint_trajectory_action_tools
	ros-melodic/joint_trajectory_generator
	ros-melodic/pr2_arm_move_ik
	ros-melodic/pr2_common_action_msgs
	ros-melodic/pr2_tilt_laser_interface
	ros-melodic/pr2_tuck_arms_action
"
DEPEND="${RDEPEND}
	ros-melodic/catkin
"

SLOT="0"
ROS_DISTRO="melodic"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
