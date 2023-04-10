# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{3_8,3_9,3_10} )

inherit ament-cmake

DESCRIPTION="Gazebo simulation package for the TurtleBot3"
HOMEPAGE="http://turtlebot3.robotis.com"
SRC_URI="https://github.com/robotis-ros2-release/turtlebot3_simulations-release/archive/release/foxy/${PN}/2.2.3-1.tar.gz -> ${PN}-foxy-release-${PV}.tar.gz"

LICENSE="Apache-2.0"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
RDEPEND="
	ros-foxy/gazebo_ros_pkgs
	ros-foxy/geometry_msgs
	ros-foxy/nav_msgs
	ros-foxy/rclcpp
	ros-foxy/sensor_msgs
	ros-foxy/tf2
	ros-foxy/turtlebot3_description
"
DEPEND="${RDEPEND}
	ros-foxy/ament_cmake
"

SLOT="0"
ROS_DISTRO="foxy"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
