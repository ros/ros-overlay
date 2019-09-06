# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{3_5,3_6} )

inherit ament-cmake

DESCRIPTION="TurtleBot3 driver node that include diff drive controller, odometry and tf node"
HOMEPAGE="http://wiki.ros.org/turtlebot3_node"
SRC_URI="https://github.com/robotis-ros2-release/turtlebot3-release/archive/release/dashing/${PN}/2.0.1-1.tar.gz -> ${PN}-dashing-release-${PV}.tar.gz"

LICENSE="Apache-2.0"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
RDEPEND="
	ros-dashing/dynamixel_sdk
	ros-dashing/geometry_msgs
	ros-dashing/message_filters
	ros-dashing/nav_msgs
	ros-dashing/rclcpp
	ros-dashing/rcutils
	ros-dashing/sensor_msgs
	ros-dashing/std_msgs
	ros-dashing/std_srvs
	ros-dashing/tf2
	ros-dashing/tf2_ros
	ros-dashing/turtlebot3_msgs
"
DEPEND="${RDEPEND}
	ros-dashing/ament_cmake
"

SLOT="0"
ROS_DISTRO="dashing"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
