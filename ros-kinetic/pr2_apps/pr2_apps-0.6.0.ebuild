# Copyright 2018 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{2_7,3_5} )

inherit ros-cmake

DESCRIPTION="Basic applications for the PR2 robot"
HOMEPAGE="http://ros.org/wiki/pr2_apps"
SRC_URI="https://github.com/pr2-gbp/${PN}-release/archive/release/kinetic/${PN}/0.6.0-0.tar.gz -> ${PN}-kinetic-release-${PV}.tar.gz"

LICENSE="BSD"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
RDEPEND="
	ros-kinetic/pr2_app_manager
	ros-kinetic/pr2_kinematics
	ros-kinetic/pr2_mannequin_mode
	ros-kinetic/pr2_position_scripts
	ros-kinetic/pr2_teleop_general
	ros-kinetic/pr2_tuckarm
"
DEPEND="${RDEPEND}
	ros-kinetic/catkin
"

SLOT="0"
ROS_DISTRO="kinetic"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
