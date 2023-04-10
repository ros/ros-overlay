# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{3_8,3_9,3_10} )

inherit ament-python

DESCRIPTION="Interface between Webots and ROS2"
HOMEPAGE="http://wiki.ros.org/webots_ros2"
SRC_URI="https://github.com/ros2-gbp/${PN}-release/archive/release/foxy/${PN}/2023.0.2-1.tar.gz -> ${PN}-foxy-release-${PV}.tar.gz"

LICENSE="Apache-2.0"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
IUSE="test"
RDEPEND="
	ros-foxy/builtin_interfaces
	ros-foxy/rclpy
	ros-foxy/std_msgs
	ros-foxy/webots_ros2_control
	ros-foxy/webots_ros2_driver
	ros-foxy/webots_ros2_epuck
	ros-foxy/webots_ros2_importer
	ros-foxy/webots_ros2_mavic
	ros-foxy/webots_ros2_msgs
	ros-foxy/webots_ros2_tesla
	ros-foxy/webots_ros2_tiago
	ros-foxy/webots_ros2_turtlebot
	ros-foxy/webots_ros2_universal_robot
	test? ( ros-foxy/ament_copyright )
	test? ( ros-foxy/webots_ros2_tests )
	test? ( dev-python/pytest )
"
DEPEND="${RDEPEND}
"

SLOT="0"
ROS_DISTRO="foxy"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
