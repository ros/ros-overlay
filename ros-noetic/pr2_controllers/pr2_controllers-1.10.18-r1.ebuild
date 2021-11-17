# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=7
PYTHON_COMPAT=( python{3_8,3_9,3_10} )

inherit ros-cmake

DESCRIPTION="Contains the controllers that run in realtime on the PR2 and supporting pac[...]"
HOMEPAGE="http://ros.org/wiki/pr2_controllers"
SRC_URI="https://github.com/pr2-gbp/${PN}-release/archive/release/noetic/${PN}/1.10.18-1.tar.gz -> ${PN}-noetic-release-${PV}.tar.gz"

LICENSE="BSD"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
RDEPEND="
	ros-noetic/control_toolbox
	ros-noetic/ethercat_trigger_controllers
	ros-noetic/joint_trajectory_action
	ros-noetic/pr2_calibration_controllers
	ros-noetic/pr2_controllers_msgs
	ros-noetic/pr2_gripper_action
	ros-noetic/pr2_head_action
	ros-noetic/pr2_mechanism_controllers
	ros-noetic/robot_mechanism_controllers
	ros-noetic/single_joint_position_action
"
DEPEND="${RDEPEND}
	ros-noetic/catkin
"

SLOT="0"
ROS_DISTRO="noetic"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
