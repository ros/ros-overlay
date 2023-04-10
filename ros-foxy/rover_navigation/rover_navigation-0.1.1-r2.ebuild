# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{3_8,3_9,3_10} )

inherit ament-cmake

DESCRIPTION="Contains Rover navigation launch files"
HOMEPAGE="https://wiki.ros.org"
SRC_URI="https://github.com/RoverRobotics-release/roverrobotics_ros2-release/archive/release/foxy/${PN}/0.1.1-2.tar.gz -> ${PN}-foxy-release-${PV}.tar.gz"

LICENSE="BSD-3-Clause"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
RDEPEND="
	ros-foxy/joint_state_publisher
	ros-foxy/launch
	ros-foxy/launch_ros
	ros-foxy/nav2_amcl
	ros-foxy/nav2_behavior_tree
	ros-foxy/nav2_bt_navigator
	ros-foxy/nav2_controller
	ros-foxy/nav2_core
	ros-foxy/nav2_costmap_2d
	ros-foxy/nav2_dwb_controller
	ros-foxy/nav2_lifecycle_manager
	ros-foxy/nav2_map_server
	ros-foxy/nav2_msgs
	ros-foxy/nav2_navfn_planner
	ros-foxy/nav2_planner
	ros-foxy/nav2_recoveries
	ros-foxy/nav2_rviz_plugins
	ros-foxy/nav2_util
	ros-foxy/nav2_voxel_grid
	ros-foxy/nav2_waypoint_follower
	ros-foxy/rviz2
"
DEPEND="${RDEPEND}
	ros-foxy/ament_cmake
"

SLOT="0"
ROS_DISTRO="foxy"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
