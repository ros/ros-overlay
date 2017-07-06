# Copyright 2017 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{2_7,3_5} )

inherit ros-cmake

DESCRIPTION="'Basic applications for the PR2 robot'"
HOMEPAGE="http://ros.org/wiki/pr2_apps"
SRC_URI="https://github.com/pr2-gbp/pr2_apps-release/archive/release/indigo/pr2_apps/0.5.21-1.tar.gz -> ${PN}-release-${PV}.tar.gz"

LICENSE="BSD"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
RDEPEND="
	ros-indigo/pr2_app_manager
	ros-indigo/pr2_kinematics
	ros-indigo/pr2_mannequin_mode
	ros-indigo/pr2_position_scripts
	ros-indigo/pr2_teleop_general
	ros-indigo/pr2_tuckarm
"
DEPEND="${RDEPEND}
	ros-indigo/catkin
"

SLOT="0"
ROS_DISTRO="indigo"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"

