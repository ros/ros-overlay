# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=7
PYTHON_COMPAT=( python{3_8,3_9,3_10} )

inherit ros-cmake

DESCRIPTION="Autonomous mapping and navigation demos for the Clearpath Husky"
HOMEPAGE="http://ros.org/wiki/husky_navigation"
SRC_URI="https://github.com/clearpath-gbp/husky-release/archive/release/noetic/${PN}/0.6.0-2.tar.gz -> ${PN}-noetic-release-${PV}.tar.gz"

LICENSE="BSD"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
RDEPEND="
	ros-noetic/amcl
	ros-noetic/base_local_planner
	ros-noetic/dwa_local_planner
	ros-noetic/gmapping
	ros-noetic/map_server
	ros-noetic/move_base
	ros-noetic/navfn
"
DEPEND="${RDEPEND}
	ros-noetic/catkin
	ros-noetic/roslaunch
"

SLOT="0"
ROS_DISTRO="noetic"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
