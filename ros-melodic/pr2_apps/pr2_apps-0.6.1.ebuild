# Copyright 2018 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{2_7,3_5,3_6} )

inherit ros-cmake

DESCRIPTION="Basic applications for the PR2 robot"
HOMEPAGE="http://ros.org/wiki/pr2_apps"
SRC_URI="https://github.com/pr2-gbp/${PN}-release/archive/release/melodic/${PN}/0.6.1-0.tar.gz -> ${PN}-melodic-release-${PV}.tar.gz"

LICENSE="BSD"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
RDEPEND="
	ros-melodic/pr2_app_manager
	ros-melodic/pr2_kinematics
	ros-melodic/pr2_mannequin_mode
	ros-melodic/pr2_position_scripts
	ros-melodic/pr2_teleop_general
	ros-melodic/pr2_tuckarm
"
DEPEND="${RDEPEND}
	ros-melodic/catkin
"

SLOT="0"
ROS_DISTRO="melodic"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
