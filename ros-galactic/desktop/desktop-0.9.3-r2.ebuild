# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=7
PYTHON_COMPAT=( python{3_8,3_9,3_10} )

inherit ament-cmake

DESCRIPTION="A package which extends \'ros_base\' and includes high level packages like [...]"
HOMEPAGE="https://wiki.ros.org"
SRC_URI="https://github.com/ros2-gbp/variants-release/archive/release/galactic/${PN}/0.9.3-2.tar.gz -> ${PN}-galactic-release-${PV}.tar.gz"

LICENSE="Apache-2.0"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
RDEPEND="
	ros-galactic/action_tutorials_cpp
	ros-galactic/action_tutorials_interfaces
	ros-galactic/action_tutorials_py
	ros-galactic/angles
	ros-galactic/composition
	ros-galactic/demo_nodes_cpp
	ros-galactic/demo_nodes_cpp_native
	ros-galactic/demo_nodes_py
	ros-galactic/depthimage_to_laserscan
	ros-galactic/dummy_map_server
	ros-galactic/dummy_robot_bringup
	ros-galactic/dummy_sensors
	ros-galactic/examples_rclcpp_minimal_action_client
	ros-galactic/examples_rclcpp_minimal_action_server
	ros-galactic/examples_rclcpp_minimal_client
	ros-galactic/examples_rclcpp_minimal_composition
	ros-galactic/examples_rclcpp_minimal_publisher
	ros-galactic/examples_rclcpp_minimal_service
	ros-galactic/examples_rclcpp_minimal_subscriber
	ros-galactic/examples_rclcpp_minimal_timer
	ros-galactic/examples_rclcpp_multithreaded_executor
	ros-galactic/examples_rclpy_executors
	ros-galactic/examples_rclpy_minimal_action_client
	ros-galactic/examples_rclpy_minimal_action_server
	ros-galactic/examples_rclpy_minimal_client
	ros-galactic/examples_rclpy_minimal_publisher
	ros-galactic/examples_rclpy_minimal_service
	ros-galactic/examples_rclpy_minimal_subscriber
	ros-galactic/image_tools
	ros-galactic/intra_process_demo
	ros-galactic/joy
	ros-galactic/lifecycle
	ros-galactic/logging_demo
	ros-galactic/pcl_conversions
	ros-galactic/pendulum_control
	ros-galactic/pendulum_msgs
	ros-galactic/quality_of_service_demo_cpp
	ros-galactic/quality_of_service_demo_py
	ros-galactic/ros_base
	ros-galactic/rqt_common_plugins
	ros-galactic/rviz2
	ros-galactic/rviz_default_plugins
	ros-galactic/teleop_twist_joy
	ros-galactic/teleop_twist_keyboard
	ros-galactic/tlsf
	ros-galactic/tlsf_cpp
	ros-galactic/topic_monitor
	ros-galactic/turtlesim
"
DEPEND="${RDEPEND}
	ros-galactic/ament_cmake
"

SLOT="0"
ROS_DISTRO="galactic"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
