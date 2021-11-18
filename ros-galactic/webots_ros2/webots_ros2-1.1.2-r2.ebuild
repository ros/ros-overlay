# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=7
PYTHON_COMPAT=( python{3_8,3_9,3_10} )

inherit ament-python

DESCRIPTION="Interface between Webots and ROS2"
HOMEPAGE="http://wiki.ros.org/webots_ros2"
SRC_URI="https://github.com/ros2-gbp/${PN}-release/archive/release/galactic/${PN}/1.1.2-2.tar.gz -> ${PN}-galactic-release-${PV}.tar.gz"

LICENSE="Apache-2.0"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
IUSE="test"
RDEPEND="
	ros-galactic/builtin_interfaces
	ros-galactic/rclpy
	ros-galactic/std_msgs
	ros-galactic/webots_ros2_control
	ros-galactic/webots_ros2_core
	ros-galactic/webots_ros2_driver
	ros-galactic/webots_ros2_epuck
	ros-galactic/webots_ros2_importer
	ros-galactic/webots_ros2_mavic
	ros-galactic/webots_ros2_msgs
	ros-galactic/webots_ros2_tesla
	ros-galactic/webots_ros2_tiago
	ros-galactic/webots_ros2_turtlebot
	ros-galactic/webots_ros2_universal_robot
	test? ( ros-galactic/ament_copyright )
	test? ( ros-galactic/ament_flake8 )
	test? ( ros-galactic/ament_pep257 )
	test? ( ros-galactic/webots_ros2_tests )
	test? ( dev-python/pytest )
"
DEPEND="${RDEPEND}
"

SLOT="0"
ROS_DISTRO="galactic"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
