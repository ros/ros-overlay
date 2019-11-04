# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{3_5,3_6} )

inherit ament-cmake

DESCRIPTION="A package which extends \'ros_base\' and includes high level packages like [...]"
HOMEPAGE="https://wiki.ros.org"
SRC_URI="https://github.com/ros2-gbp/variants-release/archive/release/eloquent/${PN}/0.8.1-1.tar.gz -> ${PN}-eloquent-release-${PV}.tar.gz"

LICENSE="Apache-2.0"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
RDEPEND="
	ros-eloquent/action_tutorials_cpp
	ros-eloquent/action_tutorials_interfaces
	ros-eloquent/action_tutorials_py
	ros-eloquent/angles
	ros-eloquent/composition
	ros-eloquent/demo_nodes_cpp
	ros-eloquent/demo_nodes_cpp_native
	ros-eloquent/demo_nodes_py
	ros-eloquent/depthimage_to_laserscan
	ros-eloquent/dummy_map_server
	ros-eloquent/dummy_robot_bringup
	ros-eloquent/dummy_sensors
	ros-eloquent/examples_rclcpp_minimal_action_client
	ros-eloquent/examples_rclcpp_minimal_action_server
	ros-eloquent/examples_rclcpp_minimal_client
	ros-eloquent/examples_rclcpp_minimal_composition
	ros-eloquent/examples_rclcpp_minimal_publisher
	ros-eloquent/examples_rclcpp_minimal_service
	ros-eloquent/examples_rclcpp_minimal_subscriber
	ros-eloquent/examples_rclcpp_minimal_timer
	ros-eloquent/examples_rclpy_executors
	ros-eloquent/examples_rclpy_minimal_action_client
	ros-eloquent/examples_rclpy_minimal_action_server
	ros-eloquent/examples_rclpy_minimal_client
	ros-eloquent/examples_rclpy_minimal_publisher
	ros-eloquent/examples_rclpy_minimal_service
	ros-eloquent/examples_rclpy_minimal_subscriber
	ros-eloquent/image_tools
	ros-eloquent/intra_process_demo
	ros-eloquent/joy
	ros-eloquent/lifecycle
	ros-eloquent/logging_demo
	ros-eloquent/pcl_conversions
	ros-eloquent/pendulum_control
	ros-eloquent/pendulum_msgs
	ros-eloquent/quality_of_service_demo_cpp
	ros-eloquent/quality_of_service_demo_py
	ros-eloquent/ros_base
	ros-eloquent/rviz2
	ros-eloquent/rviz_default_plugins
	ros-eloquent/teleop_twist_joy
	ros-eloquent/teleop_twist_keyboard
	ros-eloquent/tlsf
	ros-eloquent/tlsf_cpp
	ros-eloquent/topic_monitor
"
DEPEND="${RDEPEND}
	ros-eloquent/ament_cmake
"

SLOT="0"
ROS_DISTRO="eloquent"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
