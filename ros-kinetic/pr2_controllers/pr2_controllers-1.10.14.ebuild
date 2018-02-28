# Copyright 2018 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{2_7,3_5} )

inherit ros-cmake

DESCRIPTION="Contains the controllers that run in realtime on the PR2 and supporting pac[...]"
HOMEPAGE="http://ros.org/wiki/pr2_controllers"
SRC_URI="https://github.com/pr2-gbp/${PN}-release/archive/release/kinetic/${PN}/1.10.14-0.tar.gz -> ${PN}-kinetic-release-${PV}.tar.gz"

LICENSE="BSD"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
RDEPEND="
	ros-kinetic/control_toolbox
	ros-kinetic/ethercat_trigger_controllers
	ros-kinetic/joint_trajectory_action
	ros-kinetic/pr2_calibration_controllers
	ros-kinetic/pr2_controllers_msgs
	ros-kinetic/pr2_gripper_action
	ros-kinetic/pr2_head_action
	ros-kinetic/pr2_mechanism_controllers
	ros-kinetic/robot_mechanism_controllers
	ros-kinetic/single_joint_position_action
"
DEPEND="${RDEPEND}
	ros-kinetic/catkin
"

SLOT="0"
ROS_DISTRO="kinetic"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
