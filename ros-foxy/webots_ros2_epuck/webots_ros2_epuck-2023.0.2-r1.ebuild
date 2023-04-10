# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{3_8,3_9,3_10} )

inherit ament-python

DESCRIPTION="E-puck2 driver for Webots simulated robot"
HOMEPAGE="http://wiki.ros.org/webots_ros2"
SRC_URI="https://github.com/ros2-gbp/webots_ros2-release/archive/release/foxy/${PN}/2023.0.2-1.tar.gz -> ${PN}-foxy-release-${PV}.tar.gz"

LICENSE="Apache-2.0"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
IUSE="test"
RDEPEND="
	ros-foxy/builtin_interfaces
	ros-foxy/controller_manager
	ros-foxy/diff_drive_controller
	ros-foxy/geometry_msgs
	ros-foxy/joint_state_broadcaster
	ros-foxy/nav_msgs
	ros-foxy/rclpy
	ros-foxy/robot_state_publisher
	ros-foxy/rviz2
	ros-foxy/sensor_msgs
	ros-foxy/std_msgs
	ros-foxy/tf2_ros
	ros-foxy/webots_ros2_control
	ros-foxy/webots_ros2_driver
	ros-foxy/webots_ros2_msgs
	test? ( ros-foxy/ament_copyright )
	test? ( dev-python/pytest )
"
DEPEND="${RDEPEND}
"

SLOT="0"
ROS_DISTRO="foxy"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
