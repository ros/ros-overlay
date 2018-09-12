# Copyright 2018 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{2_7,3_5} )

inherit ros-cmake

DESCRIPTION="This package holds xml files for running the"
HOMEPAGE="http://ros.org/wiki/pr2_navigation_local"
SRC_URI="https://github.com/pr2-gbp/pr2_navigation-release/archive/release/indigo/${PN}/0.1.28-0.tar.gz -> ${PN}-indigo-release-${PV}.tar.gz"

LICENSE="BSD"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
RDEPEND="
	ros-indigo/joint_trajectory_generator
	ros-indigo/move_base
	ros-indigo/pr2_machine
	ros-indigo/pr2_move_base
	ros-indigo/pr2_navigation_config
	ros-indigo/pr2_tuck_arms_action
	ros-indigo/topic_tools
"
DEPEND="${RDEPEND}
	ros-indigo/catkin
"

SLOT="0"
ROS_DISTRO="indigo"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
