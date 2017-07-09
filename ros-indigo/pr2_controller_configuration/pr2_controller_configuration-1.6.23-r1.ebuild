# Copyright 2017 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{2_7,3_5} )

inherit ros-cmake

DESCRIPTION="'Configuration files for PR2 controllers.'"
HOMEPAGE="http://ros.org/wiki/pr2_controller_configuration"
SRC_URI="https://github.com/pr2-gbp/pr2_robot-release/archive/release/indigo/pr2_controller_configuration/1.6.23-1.tar.gz -> ${PN}-release-${PV}.tar.gz"

LICENSE="BSD"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
RDEPEND="
	ros-indigo/pr2_controller_manager
	ros-indigo/pr2_gripper_action
	ros-indigo/pr2_head_action
	ros-indigo/pr2_machine
	ros-indigo/robot_mechanism_controllers
	ros-indigo/single_joint_position_action
"
DEPEND="${RDEPEND}
	ros-indigo/catkin
	ros-indigo/roslaunch
"

SLOT="0"
ROS_DISTRO="indigo"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"

