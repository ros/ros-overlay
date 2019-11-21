# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{2_7,3_5,3_6} )

inherit ros-cmake

DESCRIPTION="This package holds XML files for running the"
HOMEPAGE="http://ros.org/wiki/pr2_navigation_global"
SRC_URI="https://github.com/pr2-gbp/pr2_navigation-release/archive/release/melodic/${PN}/0.1.28-1.tar.gz -> ${PN}-melodic-release-${PV}.tar.gz"

LICENSE="BSD"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
RDEPEND="
	ros-melodic/amcl
	ros-melodic/joint_trajectory_generator
	ros-melodic/move_base
	ros-melodic/pr2_machine
	ros-melodic/pr2_move_base
	ros-melodic/pr2_navigation_config
	ros-melodic/pr2_tuck_arms_action
	ros-melodic/topic_tools
"
DEPEND="${RDEPEND}
	ros-melodic/catkin
"

SLOT="0"
ROS_DISTRO="melodic"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
