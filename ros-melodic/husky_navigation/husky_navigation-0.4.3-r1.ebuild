# Copyright 2020 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{2_7,3_5,3_6} )

inherit ros-cmake

DESCRIPTION="Autonomous mapping and navigation demos for the Clearpath Husky"
HOMEPAGE="http://ros.org/wiki/husky_navigation"
SRC_URI="https://github.com/clearpath-gbp/husky-release/archive/release/melodic/${PN}/0.4.3-1.tar.gz -> ${PN}-melodic-release-${PV}.tar.gz"

LICENSE="BSD"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
RDEPEND="
	ros-melodic/amcl
	ros-melodic/base_local_planner
	ros-melodic/dwa_local_planner
	ros-melodic/gmapping
	ros-melodic/map_server
	ros-melodic/move_base
	ros-melodic/navfn
"
DEPEND="${RDEPEND}
	ros-melodic/catkin
	ros-melodic/roslaunch
"

SLOT="0"
ROS_DISTRO="melodic"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
