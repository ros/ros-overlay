# Copyright 2017 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{2_7,3_5} )

inherit ros-cmake

DESCRIPTION="Contains the controllers that run in realtime on the PR2 and supporting pac[...]"
HOMEPAGE="http://ros.org/wiki/pr2_controllers"
SRC_URI="https://github.com/pr2-gbp/pr2_controllers-release/archive/release/indigo/pr2_controllers/1.10.13-0.tar.gz -> ${PN}-indigo-release-${PV}.tar.gz"

LICENSE="BSD"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
RDEPEND="
	ros-indigo/control_toolbox
	ros-indigo/ethercat_trigger_controllers
	ros-indigo/joint_trajectory_action
	ros-indigo/pr2_calibration_controllers
	ros-indigo/pr2_controllers_msgs
	ros-indigo/pr2_gripper_action
	ros-indigo/pr2_head_action
	ros-indigo/pr2_mechanism_controllers
	ros-indigo/robot_mechanism_controllers
	ros-indigo/single_joint_position_action
"
DEPEND="${RDEPEND}
	ros-indigo/catkin
"

SLOT="0"
ROS_DISTRO="indigo"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
