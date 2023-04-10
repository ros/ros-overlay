# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{3_8,3_9,3_10} )

inherit ament-python

DESCRIPTION="Universal Robot ROS2 interface for Webots."
HOMEPAGE="http://wiki.ros.org/webots_ros2"
SRC_URI="https://github.com/ros2-gbp/webots_ros2-release/archive/release/foxy/${PN}/2023.0.2-1.tar.gz -> ${PN}-foxy-release-${PV}.tar.gz"

LICENSE="Apache-2.0"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
IUSE="test"
RDEPEND="
	ros-foxy/builtin_interfaces
	ros-foxy/control_msgs
	ros-foxy/controller_manager
	ros-foxy/joint_state_broadcaster
	ros-foxy/joint_trajectory_controller
	ros-foxy/rclpy
	ros-foxy/robot_state_publisher
	ros-foxy/rviz2
	ros-foxy/trajectory_msgs
	ros-foxy/webots_ros2_control
	ros-foxy/webots_ros2_driver
	ros-foxy/xacro
	test? ( ros-foxy/ament_copyright )
	test? ( dev-python/pytest )
"
DEPEND="${RDEPEND}
"

SLOT="0"
ROS_DISTRO="foxy"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
