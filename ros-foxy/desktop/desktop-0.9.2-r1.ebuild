# Copyright 2020 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{3_5,3_6} )

inherit ament-cmake

DESCRIPTION="A package which extends \'ros_base\' and includes high level packages like [...]"
HOMEPAGE="https://wiki.ros.org"
SRC_URI="https://github.com/ros2-gbp/variants-release/archive/release/foxy/${PN}/0.9.2-1.tar.gz -> ${PN}-foxy-release-${PV}.tar.gz"

LICENSE="Apache-2.0"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
RDEPEND="
	ros-foxy/action_tutorials_cpp
	ros-foxy/action_tutorials_interfaces
	ros-foxy/action_tutorials_py
	ros-foxy/angles
	ros-foxy/composition
	ros-foxy/demo_nodes_cpp
	ros-foxy/demo_nodes_cpp_native
	ros-foxy/demo_nodes_py
	ros-foxy/depthimage_to_laserscan
	ros-foxy/dummy_map_server
	ros-foxy/dummy_robot_bringup
	ros-foxy/dummy_sensors
	ros-foxy/examples_rclcpp_minimal_action_client
	ros-foxy/examples_rclcpp_minimal_action_server
	ros-foxy/examples_rclcpp_minimal_client
	ros-foxy/examples_rclcpp_minimal_composition
	ros-foxy/examples_rclcpp_minimal_publisher
	ros-foxy/examples_rclcpp_minimal_service
	ros-foxy/examples_rclcpp_minimal_subscriber
	ros-foxy/examples_rclcpp_minimal_timer
	ros-foxy/examples_rclcpp_multithreaded_executor
	ros-foxy/examples_rclpy_executors
	ros-foxy/examples_rclpy_minimal_action_client
	ros-foxy/examples_rclpy_minimal_action_server
	ros-foxy/examples_rclpy_minimal_client
	ros-foxy/examples_rclpy_minimal_publisher
	ros-foxy/examples_rclpy_minimal_service
	ros-foxy/examples_rclpy_minimal_subscriber
	ros-foxy/image_tools
	ros-foxy/intra_process_demo
	ros-foxy/joy
	ros-foxy/lifecycle
	ros-foxy/logging_demo
	ros-foxy/pcl_conversions
	ros-foxy/pendulum_control
	ros-foxy/pendulum_msgs
	ros-foxy/quality_of_service_demo_cpp
	ros-foxy/quality_of_service_demo_py
	ros-foxy/ros_base
	ros-foxy/rqt_common_plugins
	ros-foxy/rviz2
	ros-foxy/rviz_default_plugins
	ros-foxy/teleop_twist_joy
	ros-foxy/teleop_twist_keyboard
	ros-foxy/tlsf
	ros-foxy/tlsf_cpp
	ros-foxy/topic_monitor
	ros-foxy/turtlesim
"
DEPEND="${RDEPEND}
	ros-foxy/ament_cmake
"

SLOT="0"
ROS_DISTRO="foxy"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
