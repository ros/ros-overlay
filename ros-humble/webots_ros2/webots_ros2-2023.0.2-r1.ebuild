# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{3_8,3_9,3_10} )

inherit ament-python

DESCRIPTION="Interface between Webots and ROS2"
HOMEPAGE="http://wiki.ros.org/webots_ros2"
SRC_URI="https://github.com/ros2-gbp/${PN}-release/archive/release/humble/${PN}/2023.0.2-1.tar.gz -> ${PN}-humble-release-${PV}.tar.gz"

LICENSE="Apache-2.0"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
IUSE="test"
RDEPEND="
	ros-humble/builtin_interfaces
	ros-humble/rclpy
	ros-humble/std_msgs
	ros-humble/webots_ros2_control
	ros-humble/webots_ros2_driver
	ros-humble/webots_ros2_epuck
	ros-humble/webots_ros2_importer
	ros-humble/webots_ros2_mavic
	ros-humble/webots_ros2_msgs
	ros-humble/webots_ros2_tesla
	ros-humble/webots_ros2_tiago
	ros-humble/webots_ros2_turtlebot
	ros-humble/webots_ros2_universal_robot
	test? ( ros-humble/ament_copyright )
	test? ( ros-humble/webots_ros2_tests )
	test? ( dev-python/pytest )
"
DEPEND="${RDEPEND}
"

SLOT="0"
ROS_DISTRO="humble"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
