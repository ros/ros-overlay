# Copyright 2020 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{2_7,3_5,3_6} )

inherit ros-cmake

DESCRIPTION="A 2D navigation stack that takes in information from odometry, sensor\
	[...]"
HOMEPAGE="http://wiki.ros.org/navigation"
SRC_URI="https://github.com/ros-gbp/${PN}-release/archive/release/melodic/${PN}/1.16.6-1.tar.gz -> ${PN}-melodic-release-${PV}.tar.gz"

LICENSE="( BSD LGPL-2 LGPL-2 )"
KEYWORDS="~x86 ~amd64 ~arm ~arm64"
RDEPEND="
	ros-melodic/amcl
	ros-melodic/base_local_planner
	ros-melodic/carrot_planner
	ros-melodic/clear_costmap_recovery
	ros-melodic/costmap_2d
	ros-melodic/dwa_local_planner
	ros-melodic/fake_localization
	ros-melodic/global_planner
	ros-melodic/map_server
	ros-melodic/move_base
	ros-melodic/move_base_msgs
	ros-melodic/move_slow_and_clear
	ros-melodic/nav_core
	ros-melodic/navfn
	ros-melodic/rotate_recovery
	ros-melodic/voxel_grid
"
DEPEND="${RDEPEND}
	ros-melodic/catkin
"

SLOT="0"
ROS_DISTRO="melodic"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
