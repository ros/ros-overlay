# Copyright 2018 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{3_5,3_6} )

inherit ament-cmake

DESCRIPTION="A package which extends \'ros_base\' and includes high level packages like [...]"
HOMEPAGE="https://wiki.ros.org"
SRC_URI="https://github.com/ros2-gbp/variants-release/archive/release/ardent/${PN}/0.4.0-1.tar.gz -> ${PN}-ardent-release-${PV}.tar.gz"

LICENSE="Apache-2.0"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
RDEPEND="
	ros-ardent/composition
	ros-ardent/demo_nodes_cpp
	ros-ardent/demo_nodes_cpp_native
	ros-ardent/demo_nodes_py
	ros-ardent/depthimage_to_laserscan
	ros-ardent/dummy_map_server
	ros-ardent/dummy_robot_bringup
	ros-ardent/dummy_sensors
	ros-ardent/examples_rclcpp_minimal_client
	ros-ardent/examples_rclcpp_minimal_composition
	ros-ardent/examples_rclcpp_minimal_publisher
	ros-ardent/examples_rclcpp_minimal_service
	ros-ardent/examples_rclcpp_minimal_subscriber
	ros-ardent/examples_rclcpp_minimal_timer
	ros-ardent/examples_rclpy_executors
	ros-ardent/examples_rclpy_minimal_client
	ros-ardent/examples_rclpy_minimal_publisher
	ros-ardent/examples_rclpy_minimal_service
	ros-ardent/examples_rclpy_minimal_subscriber
	ros-ardent/image_tools
	ros-ardent/intra_process_demo
	ros-ardent/joy
	ros-ardent/lifecycle
	ros-ardent/logging_demo
	ros-ardent/pcl_conversions
	ros-ardent/pendulum_control
	ros-ardent/ros_base
	ros-ardent/rviz2
	ros-ardent/rviz_default_plugins
	ros-ardent/sros2
	ros-ardent/teleop_twist_joy
	ros-ardent/teleop_twist_keyboard
	ros-ardent/tlsf
	ros-ardent/tlsf_cpp
	ros-ardent/topic_monitor
"
DEPEND="${RDEPEND}
	ros-ardent/ament_cmake
"

SLOT="0"
ROS_DISTRO="ardent"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
