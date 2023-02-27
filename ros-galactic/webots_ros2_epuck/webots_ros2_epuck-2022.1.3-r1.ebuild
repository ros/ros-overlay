# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{3_5,3_6} )

inherit ament-python

DESCRIPTION="E-puck2 driver for Webots simulated robot"
HOMEPAGE="http://wiki.ros.org/webots_ros2"
SRC_URI="https://github.com/ros2-gbp/webots_ros2-release/archive/release/galactic/${PN}/2022.1.3-1.tar.gz -> ${PN}-galactic-release-${PV}.tar.gz"

LICENSE="Apache-2.0"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
IUSE="test"
RDEPEND="
	ros-galactic/builtin_interfaces
	ros-galactic/controller_manager
	ros-galactic/diff_drive_controller
	ros-galactic/geometry_msgs
	ros-galactic/joint_state_broadcaster
	ros-galactic/nav_msgs
	ros-galactic/rclpy
	ros-galactic/robot_state_publisher
	ros-galactic/rviz2
	ros-galactic/sensor_msgs
	ros-galactic/std_msgs
	ros-galactic/tf2_ros
	ros-galactic/webots_ros2_control
	ros-galactic/webots_ros2_driver
	ros-galactic/webots_ros2_msgs
	test? ( ros-galactic/ament_copyright )
	test? ( ros-galactic/ament_flake8 )
	test? ( ros-galactic/ament_pep257 )
	test? ( dev-python/pytest )
"
DEPEND="${RDEPEND}
"

SLOT="0"
ROS_DISTRO="galactic"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
