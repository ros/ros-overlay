# Copyright 2018 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{3_5,3_6} )

inherit ament-cmake

DESCRIPTION="A package which extends \'ros_base\' and includes high level packages like [...]"
HOMEPAGE="https://wiki.ros.org"
SRC_URI="https://github.com/ros2-gbp/variants-release/archive/release/bouncy/${PN}/0.5.1-0.tar.gz -> ${PN}-bouncy-release-${PV}.tar.gz"

LICENSE="Apache-2.0"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
RDEPEND="
	ros-bouncy/angles
	ros-bouncy/composition
	ros-bouncy/demo_nodes_cpp
	ros-bouncy/demo_nodes_cpp_native
	ros-bouncy/demo_nodes_py
	ros-bouncy/depthimage_to_laserscan
	ros-bouncy/dummy_map_server
	ros-bouncy/dummy_robot_bringup
	ros-bouncy/dummy_sensors
	ros-bouncy/examples_rclcpp_minimal_client
	ros-bouncy/examples_rclcpp_minimal_composition
	ros-bouncy/examples_rclcpp_minimal_publisher
	ros-bouncy/examples_rclcpp_minimal_service
	ros-bouncy/examples_rclcpp_minimal_subscriber
	ros-bouncy/examples_rclcpp_minimal_timer
	ros-bouncy/examples_rclpy_executors
	ros-bouncy/examples_rclpy_minimal_client
	ros-bouncy/examples_rclpy_minimal_publisher
	ros-bouncy/examples_rclpy_minimal_service
	ros-bouncy/examples_rclpy_minimal_subscriber
	ros-bouncy/image_tools
	ros-bouncy/intra_process_demo
	ros-bouncy/joy
	ros-bouncy/lifecycle
	ros-bouncy/logging_demo
	ros-bouncy/pcl_conversions
	ros-bouncy/pendulum_control
	ros-bouncy/ros_base
	ros-bouncy/rviz2
	ros-bouncy/rviz_default_plugins
	ros-bouncy/sros2
	ros-bouncy/teleop_twist_joy
	ros-bouncy/teleop_twist_keyboard
	ros-bouncy/tlsf
	ros-bouncy/tlsf_cpp
	ros-bouncy/topic_monitor
"
DEPEND="${RDEPEND}
	ros-bouncy/ament_cmake
"

SLOT="0"
ROS_DISTRO="bouncy"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
