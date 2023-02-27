# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{3_5,3_6} )

inherit ament-cmake

DESCRIPTION="Launch file and run-time configurations, e.g. controllers."
HOMEPAGE="https://github.com/UniversalRobots/Universal_Robots_ROS2_Driver/issues"
SRC_URI="https://github.com/ros2-gbp/Universal_Robots_ROS2_Driver-release/archive/release/galactic/${PN}/2.1.2-1.tar.gz -> ${PN}-galactic-release-${PV}.tar.gz"

LICENSE="BSD-3-Clause"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
RDEPEND="
	ros-galactic/controller_manager
	ros-galactic/force_torque_sensor_broadcaster
	ros-galactic/joint_state_broadcaster
	ros-galactic/joint_state_publisher
	ros-galactic/joint_trajectory_controller
	ros-galactic/launch
	ros-galactic/launch_ros
	ros-galactic/position_controllers
	ros-galactic/rclpy
	ros-galactic/robot_state_publisher
	ros-galactic/ros2_controllers_test_nodes
	ros-galactic/rviz2
	ros-galactic/ur_controllers
	ros-galactic/ur_description
	ros-galactic/urdf
	ros-galactic/velocity_controllers
	ros-galactic/xacro
"
DEPEND="${RDEPEND}
	ros-galactic/ament_cmake
	ros-galactic/ament_cmake_python
"

SLOT="0"
ROS_DISTRO="galactic"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
