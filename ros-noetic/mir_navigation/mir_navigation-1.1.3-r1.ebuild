# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=7
PYTHON_COMPAT=( python{3_8,3_9,3_10} )

inherit ros-cmake

DESCRIPTION="Launch and configuration files for move_base, localization etc. on the MiR [...]"
HOMEPAGE="https://github.com/dfki-ric/mir_robot"
SRC_URI="https://github.com/uos-gbp/mir_robot-release/archive/release/noetic/${PN}/1.1.3-1.tar.gz -> ${PN}-noetic-release-${PV}.tar.gz"

LICENSE="BSD"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
RDEPEND="
	ros-noetic/amcl
	ros-noetic/base_local_planner
	ros-noetic/dwa_local_planner
	ros-noetic/dwb_critics
	ros-noetic/dwb_local_planner
	ros-noetic/dwb_plugins
	ros-noetic/hector_mapping
	ros-noetic/map_server
	ros-noetic/mir_driver
	ros-noetic/mir_dwb_critics
	ros-noetic/mir_gazebo
	ros-noetic/move_base
	ros-noetic/nav_core_adapter
	ros-noetic/sbpl_lattice_planner
	ros-noetic/teb_local_planner
	dev-python/matplotlib
"
DEPEND="${RDEPEND}
	ros-noetic/catkin
	ros-noetic/roslaunch
"

SLOT="0"
ROS_DISTRO="noetic"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
