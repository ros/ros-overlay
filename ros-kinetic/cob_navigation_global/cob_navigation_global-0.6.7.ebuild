# Copyright 2018 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{2_7,3_5,3_6} )

inherit ros-cmake

DESCRIPTION="This package holds config and launch files for running the  <a href=\"http:[...]"
HOMEPAGE="http://ros.org/wiki/cob_navigation_global"
SRC_URI="https://github.com/ipa320/cob_navigation-release/archive/release/kinetic/${PN}/0.6.7-0.tar.gz -> ${PN}-kinetic-release-${PV}.tar.gz"

LICENSE="Apache-2.0"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
IUSE="test"
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
	test? ( ros-kinetic/cob_default_env_config )
	test? ( ros-kinetic/cob_supported_robots )
	test? ( ros-kinetic/roslaunch )
"
DEPEND="${RDEPEND}
	ros-kinetic/catkin
"

SLOT="0"
ROS_DISTRO="kinetic"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
