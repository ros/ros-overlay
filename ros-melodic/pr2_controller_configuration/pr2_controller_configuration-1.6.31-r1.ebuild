# Copyright 2020 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{2_7,3_5,3_6} )

inherit ros-cmake

DESCRIPTION="Configuration files for PR2 controllers."
HOMEPAGE="http://ros.org/wiki/pr2_controller_configuration"
SRC_URI="https://github.com/pr2-gbp/pr2_robot-release/archive/release/melodic/${PN}/1.6.31-1.tar.gz -> ${PN}-melodic-release-${PV}.tar.gz"

LICENSE="BSD"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
RDEPEND="
	ros-melodic/pr2_controller_manager
	ros-melodic/pr2_gripper_action
	ros-melodic/pr2_head_action
	ros-melodic/pr2_machine
	ros-melodic/robot_mechanism_controllers
	ros-melodic/single_joint_position_action
"
DEPEND="${RDEPEND}
	ros-melodic/catkin
	ros-melodic/roslaunch
"

SLOT="0"
ROS_DISTRO="melodic"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
