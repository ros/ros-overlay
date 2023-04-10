# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=8
PYTHON_COMPAT=( python{3_8,3_9,3_10,3_11} )

inherit ament-cmake

DESCRIPTION="ROS2 Navigation Stack"
HOMEPAGE="https://wiki.ros.org"
SRC_URI="https://github.com/SteveMacenski/${PN}-release/archive/release/humble/${PN}/1.1.6-1.tar.gz -> ${PN}-humble-release-${PV}.tar.gz"

LICENSE="Apache-2.0"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
RDEPEND="
	ros-humble/nav2_amcl
	ros-humble/nav2_behavior_tree
	ros-humble/nav2_behaviors
	ros-humble/nav2_bt_navigator
	ros-humble/nav2_collision_monitor
	ros-humble/nav2_constrained_smoother
	ros-humble/nav2_controller
	ros-humble/nav2_core
	ros-humble/nav2_costmap_2d
	ros-humble/nav2_dwb_controller
	ros-humble/nav2_lifecycle_manager
	ros-humble/nav2_map_server
	ros-humble/nav2_msgs
	ros-humble/nav2_navfn_planner
	ros-humble/nav2_planner
	ros-humble/nav2_regulated_pure_pursuit_controller
	ros-humble/nav2_rotation_shim_controller
	ros-humble/nav2_rviz_plugins
	ros-humble/nav2_simple_commander
	ros-humble/nav2_smac_planner
	ros-humble/nav2_smoother
	ros-humble/nav2_theta_star_planner
	ros-humble/nav2_util
	ros-humble/nav2_velocity_smoother
	ros-humble/nav2_voxel_grid
	ros-humble/nav2_waypoint_follower
"
DEPEND="${RDEPEND}
	ros-humble/ament_cmake
"

SLOT="0"
ROS_DISTRO="humble"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
