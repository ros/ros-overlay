# Copyright 2020 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{2_7,3_5,3_6} )

inherit ros-cmake

DESCRIPTION="Launch and configuration files for move_base, localization etc. on the MiR [...]"
HOMEPAGE="https://github.com/dfki-ric/mir_robot"
SRC_URI="https://github.com/uos-gbp/mir_robot-release/archive/release/melodic/${PN}/1.0.6-1.tar.gz -> ${PN}-melodic-release-${PV}.tar.gz"

LICENSE="BSD"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
RDEPEND="
	ros-melodic/amcl
	ros-melodic/base_local_planner
	ros-melodic/dwb_critics
	ros-melodic/dwb_local_planner
	ros-melodic/dwb_plugins
	ros-melodic/hector_mapping
	ros-melodic/map_server
	ros-melodic/mir_driver
	ros-melodic/mir_dwb_critics
	ros-melodic/mir_gazebo
	ros-melodic/move_base
	ros-melodic/nav_core_adapter
	ros-melodic/sbpl_lattice_planner
	dev-python/matplotlib
"
DEPEND="${RDEPEND}
	ros-melodic/catkin
	ros-melodic/roslaunch
"

SLOT="0"
ROS_DISTRO="melodic"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
