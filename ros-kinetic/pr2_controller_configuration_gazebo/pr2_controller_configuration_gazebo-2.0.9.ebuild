# Copyright 2018 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{2_7,3_5} )

inherit ros-cmake

DESCRIPTION="A copy of the pr2_controller_configuration package, for use in \
	the PR[...]"
HOMEPAGE="http://ros.org/wiki/pr2_controller_configuration_gazebo"
SRC_URI="https://github.com/pr2-gbp/pr2_simulator-release/archive/release/kinetic/${PN}/2.0.9-0.tar.gz -> ${PN}-kinetic-release-${PV}.tar.gz"

LICENSE="BSD"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
RDEPEND="
	ros-kinetic/pr2_controller_manager
	ros-kinetic/pr2_gripper_action
	ros-kinetic/pr2_head_action
	ros-kinetic/single_joint_position_action
	sci-electronics/gazebo
"
DEPEND="${RDEPEND}
	ros-kinetic/catkin
"

SLOT="0"
ROS_DISTRO="kinetic"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
