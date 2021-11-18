# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=7
PYTHON_COMPAT=( python{3_8,3_9,3_10} )

inherit ament-cmake

DESCRIPTION="This package contains the Executor module for the ROS2 Planning System"
HOMEPAGE="https://wiki.ros.org"
SRC_URI="https://github.com/IntelligentRoboticsLabs/ros2_planning_system-release/archive/release/galactic/${PN}/2.0.0-3.tar.gz -> ${PN}-galactic-release-${PV}.tar.gz"

LICENSE="Apache-2.0"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
IUSE="test"
RDEPEND="
	ros-galactic/ament_index_cpp
	ros-galactic/behaviortree_cpp_v3
	ros-galactic/lifecycle_msgs
	ros-galactic/plansys2_core
	ros-galactic/plansys2_domain_expert
	ros-galactic/plansys2_msgs
	ros-galactic/plansys2_pddl_parser
	ros-galactic/plansys2_planner
	ros-galactic/plansys2_problem_expert
	ros-galactic/popf
	ros-galactic/rclcpp
	ros-galactic/rclcpp_action
	ros-galactic/rclcpp_cascade_lifecycle
	ros-galactic/rclcpp_lifecycle
	ros-galactic/std_msgs
	test? ( ros-galactic/ament_cmake_gtest )
	test? ( ros-galactic/ament_lint_auto )
	test? ( ros-galactic/ament_lint_common )
	net-libs/cppzmq
"
DEPEND="${RDEPEND}
	ros-galactic/ament_cmake
"

SLOT="0"
ROS_DISTRO="galactic"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
