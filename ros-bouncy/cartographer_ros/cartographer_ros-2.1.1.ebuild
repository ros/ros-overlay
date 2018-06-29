# Copyright 2018 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{3_5,3_6} )

inherit ament-cmake

DESCRIPTION="Cartographer is a system that provides real-time simultaneous localization\[...]"
HOMEPAGE="https://github.com/ros2/cartographer_ros"
SRC_URI="https://github.com/ros2-gbp/${PN}-release/archive/release/bouncy/${PN}/2.1.1-0.tar.gz -> ${PN}-bouncy-release-${PV}.tar.gz"

LICENSE="Apache-2.0"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
RDEPEND="
	ros-bouncy/cartographer
	ros-bouncy/cartographer_ros_msgs
	ros-bouncy/console_bridge
	ros-bouncy/nav_msgs
	ros-bouncy/rclcpp
	ros-bouncy/sensor_msgs
	ros-bouncy/tf2
	ros-bouncy/tf2_msgs
	ros-bouncy/tf2_ros
	ros-bouncy/urdf
	ros-bouncy/visualization_msgs
	sci-libs/pcl
	dev-lang/lua:5.2
	dev-cpp/yaml-cpp
"
DEPEND="${RDEPEND}
	ros-bouncy/ament_cmake
	ros-bouncy/pcl_conversions
	ros-bouncy/tf2_eigen
	ros-bouncy/urdfdom_headers
	dev-cpp/eigen
"

SLOT="0"
ROS_DISTRO="bouncy"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
