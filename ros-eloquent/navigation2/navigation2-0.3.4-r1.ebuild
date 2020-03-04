# Copyright 2020 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{3_5,3_6} )

inherit ament-cmake

DESCRIPTION="ROS2 Navigation Stack"
HOMEPAGE="https://wiki.ros.org"
SRC_URI="https://github.com/SteveMacenski/${PN}-release/archive/release/eloquent/${PN}/0.3.4-1.tar.gz -> ${PN}-eloquent-release-${PV}.tar.gz"

LICENSE="Apache-2.0"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
RDEPEND="
	ros-eloquent/nav2_amcl
	ros-eloquent/nav2_behavior_tree
	ros-eloquent/nav2_bt_navigator
	ros-eloquent/nav2_controller
	ros-eloquent/nav2_core
	ros-eloquent/nav2_costmap_2d
	ros-eloquent/nav2_dwb_controller
	ros-eloquent/nav2_lifecycle_manager
	ros-eloquent/nav2_map_server
	ros-eloquent/nav2_msgs
	ros-eloquent/nav2_navfn_planner
	ros-eloquent/nav2_planner
	ros-eloquent/nav2_recoveries
	ros-eloquent/nav2_rviz_plugins
	ros-eloquent/nav2_util
	ros-eloquent/nav2_voxel_grid
	ros-eloquent/nav2_waypoint_follower
"
DEPEND="${RDEPEND}
	ros-eloquent/ament_cmake
"

SLOT="0"
ROS_DISTRO="eloquent"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
