# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{2_7,3_5,3_6} )

inherit ros-cmake

DESCRIPTION="A copy of the pr2_controller_configuration package, for use in \
	the PR[...]"
HOMEPAGE="http://ros.org/wiki/pr2_controller_configuration_gazebo"
SRC_URI="https://github.com/pr2-gbp/pr2_simulator-release/archive/release/lunar/${PN}/2.0.13-1.tar.gz -> ${PN}-lunar-release-${PV}.tar.gz"

LICENSE="BSD"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
RDEPEND="
	ros-lunar/pr2_controller_manager
	ros-lunar/pr2_gripper_action
	ros-lunar/pr2_head_action
	ros-lunar/single_joint_position_action
	sci-electronics/gazebo
"
DEPEND="${RDEPEND}
	ros-lunar/catkin
"

SLOT="0"
ROS_DISTRO="lunar"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
