# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{2_7,3_5,3_6} )

inherit ros-cmake

DESCRIPTION="A copy of the pr2_controller_configuration package, for use in \
	the PR[...]"
HOMEPAGE="http://ros.org/wiki/pr2_controller_configuration_gazebo"
SRC_URI="https://github.com/pr2-gbp/pr2_simulator-release/archive/release/noetic/${PN}/2.1.0-1.tar.gz -> ${PN}-noetic-release-${PV}.tar.gz"

LICENSE="BSD"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
RDEPEND="
	ros-noetic/pr2_controller_manager
	ros-noetic/pr2_gripper_action
	ros-noetic/pr2_head_action
	ros-noetic/single_joint_position_action
	sci-electronics/gazebo
"
DEPEND="${RDEPEND}
	ros-noetic/catkin
"

SLOT="0"
ROS_DISTRO="noetic"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
