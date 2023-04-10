# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=8
PYTHON_COMPAT=( python{3_8,3_9,3_10,3_11} )

inherit ament-cmake

DESCRIPTION="Launch file and run-time configurations, e.g. controllers."
HOMEPAGE="https://github.com/UniversalRobots/Universal_Robots_ROS2_Driver/issues"
SRC_URI="https://github.com/ros2-gbp/Universal_Robots_ROS2_Driver-release/archive/release/humble/${PN}/2.2.6-1.tar.gz -> ${PN}-humble-release-${PV}.tar.gz"

LICENSE="BSD-3-Clause"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
RDEPEND="
	ros-humble/controller_manager
	ros-humble/force_torque_sensor_broadcaster
	ros-humble/joint_state_broadcaster
	ros-humble/joint_state_publisher
	ros-humble/joint_trajectory_controller
	ros-humble/launch
	ros-humble/launch_ros
	ros-humble/position_controllers
	ros-humble/rclpy
	ros-humble/robot_state_publisher
	ros-humble/ros2_controllers_test_nodes
	ros-humble/rviz2
	ros-humble/ur_controllers
	ros-humble/ur_description
	ros-humble/urdf
	ros-humble/velocity_controllers
	ros-humble/xacro
"
DEPEND="${RDEPEND}
	ros-humble/ament_cmake
	ros-humble/ament_cmake_python
"

SLOT="0"
ROS_DISTRO="humble"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
