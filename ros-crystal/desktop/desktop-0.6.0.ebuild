# Copyright 2018 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{3_5,3_6} )

inherit ament-cmake

DESCRIPTION="A package which extends \'ros_base\' and includes high level packages like [...]"
HOMEPAGE="https://wiki.ros.org"
SRC_URI="https://github.com/ros2-gbp/variants-release/archive/release/crystal/${PN}/0.6.0-0.tar.gz -> ${PN}-crystal-release-${PV}.tar.gz"

LICENSE="Apache-2.0"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
RDEPEND="
	ros-crystal/angles
	ros-crystal/composition
	ros-crystal/demo_nodes_cpp
	ros-crystal/demo_nodes_cpp_native
	ros-crystal/demo_nodes_py
	ros-crystal/depthimage_to_laserscan
	ros-crystal/dummy_map_server
	ros-crystal/dummy_robot_bringup
	ros-crystal/dummy_sensors
	ros-crystal/examples_rclcpp_minimal_client
	ros-crystal/examples_rclcpp_minimal_composition
	ros-crystal/examples_rclcpp_minimal_publisher
	ros-crystal/examples_rclcpp_minimal_service
	ros-crystal/examples_rclcpp_minimal_subscriber
	ros-crystal/examples_rclcpp_minimal_timer
	ros-crystal/examples_rclpy_executors
	ros-crystal/examples_rclpy_minimal_client
	ros-crystal/examples_rclpy_minimal_publisher
	ros-crystal/examples_rclpy_minimal_service
	ros-crystal/examples_rclpy_minimal_subscriber
	ros-crystal/image_tools
	ros-crystal/intra_process_demo
	ros-crystal/joy
	ros-crystal/lifecycle
	ros-crystal/logging_demo
	ros-crystal/pcl_conversions
	ros-crystal/pendulum_control
	ros-crystal/ros_base
	ros-crystal/rviz2
	ros-crystal/rviz_default_plugins
	ros-crystal/sros2
	ros-crystal/teleop_twist_joy
	ros-crystal/teleop_twist_keyboard
	ros-crystal/tlsf
	ros-crystal/tlsf_cpp
	ros-crystal/topic_monitor
"
DEPEND="${RDEPEND}
	ros-crystal/ament_cmake
"

SLOT="0"
ROS_DISTRO="crystal"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
