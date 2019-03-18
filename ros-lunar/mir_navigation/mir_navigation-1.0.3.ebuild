# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{2_7,3_5,3_6} )

inherit ros-cmake

DESCRIPTION="Launch and configuration files for move_base, localization etc. on the MiR [...]"
HOMEPAGE="https://github.com/dfki-ric/mir_robot"
SRC_URI="https://github.com/uos-gbp/mir_robot-release/archive/release/lunar/${PN}/1.0.3-0.tar.gz -> ${PN}-lunar-release-${PV}.tar.gz"

LICENSE="BSD"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
RDEPEND="
	ros-lunar/amcl
	ros-lunar/base_local_planner
	ros-lunar/dwb_critics
	ros-lunar/dwb_local_planner
	ros-lunar/dwb_plugins
	ros-lunar/map_server
	ros-lunar/mir_driver
	ros-lunar/mir_dwb_critics
	ros-lunar/move_base
	ros-lunar/nav_core_adapter
	ros-lunar/sbpl_lattice_planner
"
DEPEND="${RDEPEND}
	ros-lunar/catkin
	ros-lunar/roslaunch
"

SLOT="0"
ROS_DISTRO="lunar"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
