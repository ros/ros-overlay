# Copyright 2017 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{2_7,3_5} )

inherit ros-cmake

DESCRIPTION="A 2D navigation stack that takes in information from odometry, sensor\
	[...]"
HOMEPAGE="http://wiki.ros.org/navigation"
SRC_URI="https://github.com/ros-gbp/navigation-release/archive/release/lunar/navigation/1.15.1-0.tar.gz -> ${PN}-lunar-release-${PV}.tar.gz"

LICENSE="( BSD LGPL-2 LGPL-2 )"
KEYWORDS="~x86 ~amd64 ~arm ~arm64"
RDEPEND="
	ros-lunar/amcl
	ros-lunar/base_local_planner
	ros-lunar/carrot_planner
	ros-lunar/clear_costmap_recovery
	ros-lunar/costmap_2d
	ros-lunar/dwa_local_planner
	ros-lunar/fake_localization
	ros-lunar/global_planner
	ros-lunar/map_server
	ros-lunar/move_base
	ros-lunar/move_base_msgs
	ros-lunar/move_slow_and_clear
	ros-lunar/nav_core
	ros-lunar/navfn
	ros-lunar/robot_pose_ekf
	ros-lunar/rotate_recovery
	ros-lunar/voxel_grid
"
DEPEND="${RDEPEND}
	ros-lunar/catkin
"

SLOT="0"
ROS_DISTRO="lunar"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"

