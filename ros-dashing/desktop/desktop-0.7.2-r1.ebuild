# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{3_5,3_6} )

inherit ament-cmake

DESCRIPTION="A package which extends \'ros_base\' and includes high level packages like [...]"
HOMEPAGE="https://wiki.ros.org"
SRC_URI="https://github.com/ros2-gbp/variants-release/archive/release/dashing/${PN}/0.7.2-1.tar.gz -> ${PN}-dashing-release-${PV}.tar.gz"

LICENSE="Apache-2.0"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
RDEPEND="
	ros-dashing/action_tutorials
	ros-dashing/angles
	ros-dashing/composition
	ros-dashing/demo_nodes_cpp
	ros-dashing/demo_nodes_cpp_native
	ros-dashing/demo_nodes_py
	ros-dashing/depthimage_to_laserscan
	ros-dashing/dummy_map_server
	ros-dashing/dummy_robot_bringup
	ros-dashing/dummy_sensors
	ros-dashing/examples_rclcpp_minimal_action_client
	ros-dashing/examples_rclcpp_minimal_action_server
	ros-dashing/examples_rclcpp_minimal_client
	ros-dashing/examples_rclcpp_minimal_composition
	ros-dashing/examples_rclcpp_minimal_publisher
	ros-dashing/examples_rclcpp_minimal_service
	ros-dashing/examples_rclcpp_minimal_subscriber
	ros-dashing/examples_rclcpp_minimal_timer
	ros-dashing/examples_rclpy_executors
	ros-dashing/examples_rclpy_minimal_action_client
	ros-dashing/examples_rclpy_minimal_action_server
	ros-dashing/examples_rclpy_minimal_client
	ros-dashing/examples_rclpy_minimal_publisher
	ros-dashing/examples_rclpy_minimal_service
	ros-dashing/examples_rclpy_minimal_subscriber
	ros-dashing/image_tools
	ros-dashing/intra_process_demo
	ros-dashing/joy
	ros-dashing/lifecycle
	ros-dashing/logging_demo
	ros-dashing/pcl_conversions
	ros-dashing/pendulum_control
	ros-dashing/pendulum_msgs
	ros-dashing/quality_of_service_demo_cpp
	ros-dashing/quality_of_service_demo_py
	ros-dashing/ros_base
	ros-dashing/rviz2
	ros-dashing/rviz_default_plugins
	ros-dashing/teleop_twist_joy
	ros-dashing/teleop_twist_keyboard
	ros-dashing/tlsf
	ros-dashing/tlsf_cpp
	ros-dashing/topic_monitor
"
DEPEND="${RDEPEND}
	ros-dashing/ament_cmake
"

SLOT="0"
ROS_DISTRO="dashing"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
