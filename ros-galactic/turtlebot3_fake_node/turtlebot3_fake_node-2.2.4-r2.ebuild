# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=7
PYTHON_COMPAT=( python{3_8,3_9,3_10} )

inherit ament-cmake

DESCRIPTION="Package for TurtleBot3 fake node. With this package, simple tests can be do[...]"
HOMEPAGE="http://turtlebot3.robotis.com"
SRC_URI="https://github.com/robotis-ros2-release/turtlebot3_simulations-release/archive/release/galactic/${PN}/2.2.4-2.tar.gz -> ${PN}-galactic-release-${PV}.tar.gz"

LICENSE="Apache-2.0"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
RDEPEND="
	ros-galactic/ament_cmake
	ros-galactic/geometry_msgs
	ros-galactic/nav_msgs
	ros-galactic/rclcpp
	ros-galactic/robot_state_publisher
	ros-galactic/sensor_msgs
	ros-galactic/tf2
	ros-galactic/tf2_msgs
	ros-galactic/turtlebot3_msgs
"
DEPEND="${RDEPEND}
"

SLOT="0"
ROS_DISTRO="galactic"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
