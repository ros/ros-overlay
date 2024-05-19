# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=7
PYTHON_COMPAT=( python{3_8,3_9,3_10} )

inherit ros-cmake

DESCRIPTION="This package holds xml files for running the"
HOMEPAGE="http://ros.org/wiki/pr2_navigation_local"
SRC_URI="https://github.com/pr2-gbp/pr2_navigation-release/archive/release/noetic/${PN}/0.2.0-1.tar.gz -> ${PN}-noetic-release-${PV}.tar.gz"

LICENSE="BSD"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
RDEPEND="
	ros-noetic/joint_trajectory_generator
	ros-noetic/move_base
	ros-noetic/pr2_machine
	ros-noetic/pr2_move_base
	ros-noetic/pr2_navigation_config
	ros-noetic/pr2_tuck_arms_action
	ros-noetic/topic_tools
"
DEPEND="${RDEPEND}
	ros-noetic/catkin
"

SLOT="0"
ROS_DISTRO="noetic"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
