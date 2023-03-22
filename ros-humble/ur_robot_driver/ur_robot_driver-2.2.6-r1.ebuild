# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{3_8,3_9,3_10} )

inherit ament-cmake

DESCRIPTION="The new driver for Universal Robots UR3, UR5 and UR10 robots with CB3 contr[...]"
HOMEPAGE="https://github.com/UniversalRobots/Universal_Robots_ROS2_Driver/issues"
SRC_URI="https://github.com/ros2-gbp/Universal_Robots_ROS2_Driver-release/archive/release/humble/${PN}/2.2.6-1.tar.gz -> ${PN}-humble-release-${PV}.tar.gz"

LICENSE="BSD-3-Clause"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
IUSE="test"
RDEPEND="
	ros-humble/controller_manager
	ros-humble/controller_manager_msgs
	ros-humble/force_torque_sensor_broadcaster
	ros-humble/geometry_msgs
	ros-humble/hardware_interface
	ros-humble/joint_state_broadcaster
	ros-humble/joint_state_publisher
	ros-humble/joint_trajectory_controller
	ros-humble/launch
	ros-humble/launch_ros
	ros-humble/pluginlib
	ros-humble/position_controllers
	ros-humble/rclcpp
	ros-humble/rclcpp_lifecycle
	ros-humble/rclpy
	ros-humble/robot_state_publisher
	ros-humble/ros2_controllers_test_nodes
	ros-humble/rviz2
	ros-humble/std_msgs
	ros-humble/std_srvs
	ros-humble/tf2_geometry_msgs
	ros-humble/ur_client_library
	ros-humble/ur_controllers
	ros-humble/ur_dashboard_msgs
	ros-humble/ur_description
	ros-humble/ur_msgs
	ros-humble/urdf
	ros-humble/velocity_controllers
	ros-humble/xacro
	test? ( ros-humble/launch_testing_ament_cmake )
	net-misc/socat
"
DEPEND="${RDEPEND}
	ros-humble/ament_cmake
	ros-humble/ament_cmake_python
"

SLOT="0"
ROS_DISTRO="humble"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
