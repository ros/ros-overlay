# Copyright 2018 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{2_7,3_5} )

inherit ros-cmake

DESCRIPTION="A 2D navigation stack that takes in information from odometry, sensor\
	[...]"
HOMEPAGE="http://wiki.ros.org/navigation"
SRC_URI="https://github.com/ros-gbp/${PN}-release/archive/release/indigo/${PN}/1.12.16-0.tar.gz -> ${PN}-indigo-release-${PV}.tar.gz"

LICENSE="( BSD LGPL-2 LGPL-2 )"
KEYWORDS="~x86 ~amd64 ~arm ~arm64"
RDEPEND="
	ros-indigo/amcl
	ros-indigo/base_local_planner
	ros-indigo/carrot_planner
	ros-indigo/clear_costmap_recovery
	ros-indigo/costmap_2d
	ros-indigo/dwa_local_planner
	ros-indigo/fake_localization
	ros-indigo/global_planner
	ros-indigo/map_server
	ros-indigo/move_base
	ros-indigo/move_base_msgs
	ros-indigo/move_slow_and_clear
	ros-indigo/nav_core
	ros-indigo/navfn
	ros-indigo/robot_pose_ekf
	ros-indigo/rotate_recovery
	ros-indigo/voxel_grid
"
DEPEND="${RDEPEND}
	ros-indigo/catkin
"

SLOT="0"
ROS_DISTRO="indigo"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
