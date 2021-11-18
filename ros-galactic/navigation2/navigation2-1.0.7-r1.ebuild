# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=7
PYTHON_COMPAT=( python{3_8,3_9,3_10} )

inherit ament-cmake

DESCRIPTION="ROS2 Navigation Stack"
HOMEPAGE="https://wiki.ros.org"
SRC_URI="https://github.com/SteveMacenski/${PN}-release/archive/release/galactic/${PN}/1.0.7-1.tar.gz -> ${PN}-galactic-release-${PV}.tar.gz"

LICENSE="Apache-2.0"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
RDEPEND="
	ros-galactic/nav2_amcl
	ros-galactic/nav2_behavior_tree
	ros-galactic/nav2_bt_navigator
	ros-galactic/nav2_controller
	ros-galactic/nav2_core
	ros-galactic/nav2_costmap_2d
	ros-galactic/nav2_dwb_controller
	ros-galactic/nav2_lifecycle_manager
	ros-galactic/nav2_map_server
	ros-galactic/nav2_msgs
	ros-galactic/nav2_navfn_planner
	ros-galactic/nav2_planner
	ros-galactic/nav2_recoveries
	ros-galactic/nav2_regulated_pure_pursuit_controller
	ros-galactic/nav2_rviz_plugins
	ros-galactic/nav2_smac_planner
	ros-galactic/nav2_util
	ros-galactic/nav2_voxel_grid
	ros-galactic/nav2_waypoint_follower
"
DEPEND="${RDEPEND}
	ros-galactic/ament_cmake
"

SLOT="0"
ROS_DISTRO="galactic"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
