# Copyright 2018 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{2_7,3_5,3_6} )

inherit ros-cmake

DESCRIPTION="Contains the controllers that run in realtime on the PR2 and supporting pac[...]"
HOMEPAGE="http://ros.org/wiki/pr2_controllers"
SRC_URI="https://github.com/pr2-gbp/${PN}-release/archive/release/lunar/${PN}/1.10.15-0.tar.gz -> ${PN}-lunar-release-${PV}.tar.gz"

LICENSE="BSD"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
RDEPEND="
	ros-lunar/control_toolbox
	ros-lunar/ethercat_trigger_controllers
	ros-lunar/joint_trajectory_action
	ros-lunar/pr2_calibration_controllers
	ros-lunar/pr2_controllers_msgs
	ros-lunar/pr2_gripper_action
	ros-lunar/pr2_head_action
	ros-lunar/pr2_mechanism_controllers
	ros-lunar/robot_mechanism_controllers
	ros-lunar/single_joint_position_action
"
DEPEND="${RDEPEND}
	ros-lunar/catkin
"

SLOT="0"
ROS_DISTRO="lunar"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
