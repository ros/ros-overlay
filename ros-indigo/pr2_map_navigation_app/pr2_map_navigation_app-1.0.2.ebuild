# Copyright 2017 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{2_7,3_5} )

inherit ros-cmake

DESCRIPTION="Map nav for the PR2."
HOMEPAGE="http://ros.org/wiki/map_nav"
SRC_URI="https://github.com/pr2-gbp/pr2_map_navigation_app-release/archive/release/indigo/pr2_map_navigation_app/1.0.2-0.tar.gz -> ${PN}-indigo-release-${PV}.tar.gz"

LICENSE="BSD"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
RDEPEND="
	ros-indigo/amcl
	ros-indigo/map_store
	ros-indigo/pr2_machine
	ros-indigo/pr2_navigation_config
	ros-indigo/pr2_navigation_global
	ros-indigo/pr2_navigation_perception
	ros-indigo/pr2_navigation_teleop
	ros-indigo/pr2_position_scripts
	ros-indigo/tf
	ros-indigo/topic_tools
	dev-db/mongodb
"
DEPEND="${RDEPEND}
	ros-indigo/catkin
"

SLOT="0"
ROS_DISTRO="indigo"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
