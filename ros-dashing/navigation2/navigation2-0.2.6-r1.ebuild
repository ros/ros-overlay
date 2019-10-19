# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{3_5,3_6} )

inherit ament-cmake

DESCRIPTION="ROS2 Navigation Stack"
HOMEPAGE="https://wiki.ros.org"
SRC_URI="https://github.com/SteveMacenski/${PN}-release/archive/release/dashing/${PN}/0.2.6-1.tar.gz -> ${PN}-dashing-release-${PV}.tar.gz"

LICENSE="Apache-2.0"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
IUSE="test"
RDEPEND="
	ros-dashing/nav2_amcl
	ros-dashing/nav2_behavior_tree
	ros-dashing/nav2_bt_navigator
	ros-dashing/nav2_costmap_2d
	ros-dashing/nav2_dwb_controller
	ros-dashing/nav2_lifecycle_manager
	ros-dashing/nav2_map_server
	ros-dashing/nav2_msgs
	ros-dashing/nav2_navfn_planner
	ros-dashing/nav2_recoveries
	ros-dashing/nav2_rviz_plugins
	ros-dashing/nav2_util
	ros-dashing/nav2_voxel_grid
	ros-dashing/nav2_world_model
	test? ( ros-dashing/ament_cmake_gtest )
	test? ( ros-dashing/ament_cmake_pytest )
	test? ( ros-dashing/ament_lint_auto )
	test? ( ros-dashing/ament_lint_common )
	test? ( ros-dashing/launch )
	test? ( ros-dashing/launch_testing )
"
DEPEND="${RDEPEND}
	ros-dashing/ament_cmake
"

SLOT="0"
ROS_DISTRO="dashing"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
