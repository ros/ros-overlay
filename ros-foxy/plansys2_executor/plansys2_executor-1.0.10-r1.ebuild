# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{3_8,3_9,3_10} )

inherit ament-cmake

DESCRIPTION="This package contains the Executor module for the ROS2 Planning System"
HOMEPAGE="https://wiki.ros.org"
SRC_URI="https://github.com/IntelligentRoboticsLabs/ros2_planning_system-release/archive/release/foxy/${PN}/1.0.10-1.tar.gz -> ${PN}-foxy-release-${PV}.tar.gz"

LICENSE="Apache-2.0"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
IUSE="test"
RDEPEND="
	ros-foxy/ament_index_cpp
	ros-foxy/behaviortree_cpp_v3
	ros-foxy/lifecycle_msgs
	ros-foxy/plansys2_core
	ros-foxy/plansys2_domain_expert
	ros-foxy/plansys2_msgs
	ros-foxy/plansys2_pddl_parser
	ros-foxy/plansys2_planner
	ros-foxy/plansys2_problem_expert
	ros-foxy/popf
	ros-foxy/rclcpp
	ros-foxy/rclcpp_action
	ros-foxy/rclcpp_cascade_lifecycle
	ros-foxy/rclcpp_lifecycle
	ros-foxy/std_msgs
	test? ( ros-foxy/ament_cmake_gtest )
	test? ( ros-foxy/ament_lint_auto )
	test? ( ros-foxy/ament_lint_common )
	net-libs/cppzmq
"
DEPEND="${RDEPEND}
	ros-foxy/ament_cmake
"

SLOT="0"
ROS_DISTRO="foxy"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
