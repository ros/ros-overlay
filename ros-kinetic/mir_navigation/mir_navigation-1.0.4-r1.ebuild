# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{2_7,3_5,3_6} )

inherit ros-cmake

DESCRIPTION="Launch and configuration files for move_base, localization etc. on the MiR [...]"
HOMEPAGE="https://github.com/dfki-ric/mir_robot"
SRC_URI="https://github.com/uos-gbp/mir_robot-release/archive/release/kinetic/${PN}/1.0.4-1.tar.gz -> ${PN}-kinetic-release-${PV}.tar.gz"

LICENSE="BSD"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
RDEPEND="
	ros-kinetic/amcl
	ros-kinetic/base_local_planner
	ros-kinetic/dwb_critics
	ros-kinetic/dwb_local_planner
	ros-kinetic/dwb_plugins
	ros-kinetic/map_server
	ros-kinetic/mir_driver
	ros-kinetic/mir_dwb_critics
	ros-kinetic/move_base
	ros-kinetic/nav_core_adapter
	ros-kinetic/sbpl_lattice_planner
"
DEPEND="${RDEPEND}
	ros-kinetic/catkin
	ros-kinetic/roslaunch
"

SLOT="0"
ROS_DISTRO="kinetic"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
