# Copyright 2018 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{2_7,3_5,3_6} )

inherit ros-cmake

DESCRIPTION="This package holds config and launch files for running the  <a href=\"http:[...]"
HOMEPAGE="http://ros.org/wiki/cob_navigation_global"
SRC_URI="https://github.com/ipa320/cob_navigation-release/archive/release/indigo/${PN}/0.6.7-0.tar.gz -> ${PN}-indigo-release-${PV}.tar.gz"

LICENSE="Apache-2.0"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
IUSE="test"
RDEPEND="
	ros-indigo/amcl
	ros-indigo/cob_default_env_config
	ros-indigo/cob_linear_nav
	ros-indigo/cob_navigation_config
	ros-indigo/cob_scan_unifier
	ros-indigo/dwa_local_planner
	ros-indigo/map_server
	ros-indigo/move_base
	ros-indigo/rviz
	ros-indigo/topic_tools
	test? ( ros-indigo/cob_default_env_config )
	test? ( ros-indigo/cob_supported_robots )
	test? ( ros-indigo/roslaunch )
"
DEPEND="${RDEPEND}
	ros-indigo/catkin
"

SLOT="0"
ROS_DISTRO="indigo"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
