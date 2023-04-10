# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=8
PYTHON_COMPAT=( python{3_8,3_9,3_10,3_11} )

inherit ament-cmake

DESCRIPTION="A package which extends \'ros_base\' and includes high level packages like [...]"
HOMEPAGE="https://wiki.ros.org"
SRC_URI="https://github.com/ros2-gbp/variants-release/archive/release/humble/${PN}/0.10.0-1.tar.gz -> ${PN}-humble-release-${PV}.tar.gz"

LICENSE="Apache-2.0"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
RDEPEND="
	ros-humble/action_tutorials_cpp
	ros-humble/action_tutorials_interfaces
	ros-humble/action_tutorials_py
	ros-humble/angles
	ros-humble/composition
	ros-humble/demo_nodes_cpp
	ros-humble/demo_nodes_cpp_native
	ros-humble/demo_nodes_py
	ros-humble/depthimage_to_laserscan
	ros-humble/dummy_map_server
	ros-humble/dummy_robot_bringup
	ros-humble/dummy_sensors
	ros-humble/examples_rclcpp_minimal_action_client
	ros-humble/examples_rclcpp_minimal_action_server
	ros-humble/examples_rclcpp_minimal_client
	ros-humble/examples_rclcpp_minimal_composition
	ros-humble/examples_rclcpp_minimal_publisher
	ros-humble/examples_rclcpp_minimal_service
	ros-humble/examples_rclcpp_minimal_subscriber
	ros-humble/examples_rclcpp_minimal_timer
	ros-humble/examples_rclcpp_multithreaded_executor
	ros-humble/examples_rclpy_executors
	ros-humble/examples_rclpy_minimal_action_client
	ros-humble/examples_rclpy_minimal_action_server
	ros-humble/examples_rclpy_minimal_client
	ros-humble/examples_rclpy_minimal_publisher
	ros-humble/examples_rclpy_minimal_service
	ros-humble/examples_rclpy_minimal_subscriber
	ros-humble/image_tools
	ros-humble/intra_process_demo
	ros-humble/joy
	ros-humble/lifecycle
	ros-humble/logging_demo
	ros-humble/pcl_conversions
	ros-humble/pendulum_control
	ros-humble/pendulum_msgs
	ros-humble/quality_of_service_demo_cpp
	ros-humble/quality_of_service_demo_py
	ros-humble/ros_base
	ros-humble/rqt_common_plugins
	ros-humble/rviz2
	ros-humble/rviz_default_plugins
	ros-humble/teleop_twist_joy
	ros-humble/teleop_twist_keyboard
	ros-humble/tlsf
	ros-humble/tlsf_cpp
	ros-humble/topic_monitor
	ros-humble/turtlesim
"
DEPEND="${RDEPEND}
	ros-humble/ament_cmake
"

SLOT="0"
ROS_DISTRO="humble"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
