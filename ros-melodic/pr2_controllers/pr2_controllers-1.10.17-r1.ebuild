# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{2_7,3_5,3_6} )

inherit ros-cmake

DESCRIPTION="Contains the controllers that run in realtime on the PR2 and supporting pac[...]"
HOMEPAGE="http://ros.org/wiki/pr2_controllers"
SRC_URI="https://github.com/pr2-gbp/${PN}-release/archive/release/melodic/${PN}/1.10.17-1.tar.gz -> ${PN}-melodic-release-${PV}.tar.gz"

LICENSE="BSD"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
RDEPEND="
	ros-melodic/control_toolbox
	ros-melodic/ethercat_trigger_controllers
	ros-melodic/joint_trajectory_action
	ros-melodic/pr2_calibration_controllers
	ros-melodic/pr2_controllers_msgs
	ros-melodic/pr2_gripper_action
	ros-melodic/pr2_head_action
	ros-melodic/pr2_mechanism_controllers
	ros-melodic/robot_mechanism_controllers
	ros-melodic/single_joint_position_action
"
DEPEND="${RDEPEND}
	ros-melodic/catkin
"

SLOT="0"
ROS_DISTRO="melodic"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
