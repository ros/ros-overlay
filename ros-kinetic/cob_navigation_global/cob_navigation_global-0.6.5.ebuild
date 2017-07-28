# Copyright 2017 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{2_7,3_5} )

inherit ros-cmake

DESCRIPTION="a#text"
HOMEPAGE="http://ros.org/wiki/cob_navigation_global"
SRC_URI="https://github.com/ipa320/cob_navigation-release/archive/release/kinetic/cob_navigation_global/0.6.5-0.tar.gz -> ${PN}-release-${PV}.tar.gz"

LICENSE="LGPL-2"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
RDEPEND="
	ros-kinetic/amcl
	ros-kinetic/cob_default_env_config
	ros-kinetic/cob_linear_nav
	ros-kinetic/cob_navigation_config
	ros-kinetic/cob_scan_unifier
	ros-kinetic/dwa_local_planner
	ros-kinetic/map_server
	ros-kinetic/move_base
	ros-kinetic/rviz
	ros-kinetic/topic_tools
"
DEPEND="${RDEPEND}
	ros-kinetic/catkin
"

SLOT="0"
ROS_DISTRO="kinetic"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"

