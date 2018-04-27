# Copyright 2018 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{2_7,3_5} )

inherit ros-cmake

DESCRIPTION="This package holds launch files for running the"
HOMEPAGE="http://ros.org/wiki/pr2_navigation_slam"
SRC_URI="https://github.com/pr2-gbp/pr2_navigation-release/archive/release/kinetic/${PN}/0.1.28-0.tar.gz -> ${PN}-kinetic-release-${PV}.tar.gz"

LICENSE="BSD"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
RDEPEND="
	ros-kinetic/gmapping
	ros-kinetic/joint_trajectory_generator
	ros-kinetic/move_base
	ros-kinetic/pr2_machine
	ros-kinetic/pr2_move_base
	ros-kinetic/pr2_navigation_config
	ros-kinetic/pr2_tuck_arms_action
	ros-kinetic/topic_tools
"
DEPEND="${RDEPEND}
	ros-kinetic/catkin
"

SLOT="0"
ROS_DISTRO="kinetic"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
