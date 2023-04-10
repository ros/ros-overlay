# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=8
PYTHON_COMPAT=( python{3_8,3_9,3_10,3_11} )

inherit ament-cmake

DESCRIPTION="Package for TurtleBot3 fake node. With this package, simple tests can be do[...]"
HOMEPAGE="http://turtlebot3.robotis.com"
SRC_URI="https://github.com/ros2-gbp/turtlebot3_simulations-release/archive/release/humble/${PN}/2.2.5-3.tar.gz -> ${PN}-humble-release-${PV}.tar.gz"

LICENSE="Apache-2.0"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
RDEPEND="
	ros-humble/ament_cmake
	ros-humble/geometry_msgs
	ros-humble/nav_msgs
	ros-humble/rclcpp
	ros-humble/robot_state_publisher
	ros-humble/sensor_msgs
	ros-humble/tf2
	ros-humble/tf2_msgs
	ros-humble/turtlebot3_msgs
"
DEPEND="${RDEPEND}
"

SLOT="0"
ROS_DISTRO="humble"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
