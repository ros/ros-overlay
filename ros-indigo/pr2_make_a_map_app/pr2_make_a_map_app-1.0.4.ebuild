# Copyright 2017 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{2_7,3_5} )

inherit ros-cmake

DESCRIPTION="Make maps using the PR2 robot"
HOMEPAGE="http://ros.org/wiki/make_a_map"
SRC_URI="https://github.com/pr2-gbp/pr2_make_a_map_app-release/archive/release/indigo/pr2_make_a_map_app/1.0.4-0.tar.gz -> ${PN}-release-${PV}.tar.gz"

LICENSE="BSD"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
RDEPEND="
	ros-indigo/gmapping
	ros-indigo/map_store
	ros-indigo/pr2_position_scripts
	ros-indigo/tf
	ros-indigo/topic_tools
"
DEPEND="${RDEPEND}
	ros-indigo/catkin
"

SLOT="0"
ROS_DISTRO="indigo"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"

