# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=8
PYTHON_COMPAT=( python{3_8,3_9,3_10,3_11} )

inherit ament-cmake

DESCRIPTION="TODO"
HOMEPAGE="https://wiki.ros.org"
SRC_URI="https://github.com/SteveMacenski/navigation2-release/archive/release/humble/${PN}/1.1.6-1.tar.gz -> ${PN}-humble-release-${PV}.tar.gz"

LICENSE="Apache-2.0"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
IUSE="test"
RDEPEND="
	ros-humble/gazebo_ros_pkgs
	ros-humble/geometry_msgs
	ros-humble/launch_ros
	ros-humble/launch_testing
	ros-humble/nav2_amcl
	ros-humble/nav2_behavior_tree
	ros-humble/nav2_bringup
	ros-humble/nav2_lifecycle_manager
	ros-humble/nav2_map_server
	ros-humble/nav2_msgs
	ros-humble/nav2_navfn_planner
	ros-humble/nav2_planner
	ros-humble/nav2_util
	ros-humble/nav_msgs
	ros-humble/navigation2
	ros-humble/rclcpp
	ros-humble/rclpy
	ros-humble/robot_state_publisher
	ros-humble/std_msgs
	ros-humble/tf2_geometry_msgs
	ros-humble/visualization_msgs
	test? ( ros-humble/ament_cmake_gtest )
	test? ( ros-humble/ament_cmake_pytest )
	test? ( ros-humble/ament_lint_auto )
	test? ( ros-humble/ament_lint_common )
	test? ( ros-humble/launch )
	test? ( ros-humble/launch_ros )
	test? ( ros-humble/launch_testing )
	dev-util/lcov
	test? ( dev-python/pyzmq )
"
DEPEND="${RDEPEND}
	ros-humble/ament_cmake
	ros-humble/nav2_common
"

SLOT="0"
ROS_DISTRO="humble"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
