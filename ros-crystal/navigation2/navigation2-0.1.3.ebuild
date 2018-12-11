# Copyright 2018 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{3_5,3_6} )

inherit ament-cmake

DESCRIPTION="ROS2 Navigation Stack"
HOMEPAGE="https://wiki.ros.org"
SRC_URI="https://github.com/SteveMacenski/${PN}-release/archive/release/crystal/${PN}/0.1.3-0.tar.gz -> ${PN}-crystal-release-${PV}.tar.gz"

LICENSE="Apache-2.0"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
IUSE="test"
RDEPEND="
	ros-crystal/nav2_amcl
	ros-crystal/nav2_bt_navigator
	ros-crystal/nav2_costmap_2d
	ros-crystal/nav2_dwb_controller
	ros-crystal/nav2_dynamic_params
	ros-crystal/nav2_map_server
	ros-crystal/nav2_mission_executor
	ros-crystal/nav2_msgs
	ros-crystal/nav2_navfn_planner
	ros-crystal/nav2_robot
	ros-crystal/nav2_simple_navigator
	ros-crystal/nav2_system_tests
	ros-crystal/nav2_tasks
	ros-crystal/nav2_util
	ros-crystal/nav2_voxel_grid
	ros-crystal/nav2_world_model
	test? ( ros-crystal/ament_cmake_gtest )
	test? ( ros-crystal/ament_cmake_pytest )
	test? ( ros-crystal/ament_lint_auto )
	test? ( ros-crystal/ament_lint_common )
	test? ( ros-crystal/launch )
	test? ( ros-crystal/launch_testing )
"
DEPEND="${RDEPEND}
	ros-crystal/ament_cmake
"

SLOT="0"
ROS_DISTRO="crystal"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
