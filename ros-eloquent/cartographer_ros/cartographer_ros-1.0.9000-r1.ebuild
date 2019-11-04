# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{3_5,3_6} )

inherit ament-cmake

DESCRIPTION="Cartographer is a system that provides real-time simultaneous localization\[...]"
HOMEPAGE="https://github.com/ros2/cartographer_ros"
SRC_URI="https://github.com/ros2-gbp/${PN}-release/archive/release/eloquent/${PN}/1.0.9000-1.tar.gz -> ${PN}-eloquent-release-${PV}.tar.gz"

LICENSE="Apache-2.0"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
RDEPEND="
	ros-eloquent/cartographer
	ros-eloquent/cartographer_ros_msgs
	ros-eloquent/nav_msgs
	ros-eloquent/rclcpp
	ros-eloquent/sensor_msgs
	ros-eloquent/tf2
	ros-eloquent/tf2_msgs
	ros-eloquent/tf2_ros
	ros-eloquent/visualization_msgs
	sci-libs/pcl
	dev-lang/lua:5.2
	dev-cpp/yaml-cpp
"
DEPEND="${RDEPEND}
	ros-eloquent/ament_cmake
	ros-eloquent/pcl_conversions
	ros-eloquent/tf2_eigen
	ros-eloquent/urdfdom_headers
	dev-cpp/eigen
"

SLOT="0"
ROS_DISTRO="eloquent"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
