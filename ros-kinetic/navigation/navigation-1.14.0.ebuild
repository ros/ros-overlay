# Copyright 2017 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{2_7,3_5} )

inherit ros-cmake

DESCRIPTION="A 2D navigation stack that takes in information from odometry, sensor\
	[...]"
HOMEPAGE="http://wiki.ros.org/navigation"
SRC_URI="https://github.com/ros-gbp/navigation-release/archive/release/kinetic/navigation/1.14.0-0.tar.gz -> ${PN}-kinetic-release-${PV}.tar.gz"

LICENSE="( BSD LGPL-2 LGPL-2 )"
KEYWORDS="~x86 ~amd64 ~arm ~arm64"
RDEPEND="
	ros-kinetic/amcl
	ros-kinetic/base_local_planner
	ros-kinetic/carrot_planner
	ros-kinetic/clear_costmap_recovery
	ros-kinetic/costmap_2d
	ros-kinetic/dwa_local_planner
	ros-kinetic/fake_localization
	ros-kinetic/global_planner
	ros-kinetic/map_server
	ros-kinetic/move_base
	ros-kinetic/move_base_msgs
	ros-kinetic/move_slow_and_clear
	ros-kinetic/nav_core
	ros-kinetic/navfn
	ros-kinetic/robot_pose_ekf
	ros-kinetic/rotate_recovery
	ros-kinetic/voxel_grid
"
DEPEND="${RDEPEND}
	ros-kinetic/catkin
"

SLOT="0"
ROS_DISTRO="kinetic"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"

