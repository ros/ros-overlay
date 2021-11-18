# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=7
PYTHON_COMPAT=( python{3_8,3_9,3_10} )

inherit ament-cmake

DESCRIPTION="Cartographer is a system that provides real-time simultaneous localization\[...]"
HOMEPAGE="https://github.com/ros2/cartographer_ros"
SRC_URI="https://github.com/ros2-gbp/${PN}-release/archive/release/galactic/${PN}/1.0.9003-4.tar.gz -> ${PN}-galactic-release-${PV}.tar.gz"

LICENSE="Apache-2.0"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
RDEPEND="
	ros-galactic/cartographer
	ros-galactic/cartographer_ros_msgs
	ros-galactic/nav_msgs
	ros-galactic/rclcpp
	ros-galactic/sensor_msgs
	ros-galactic/tf2
	ros-galactic/tf2_msgs
	ros-galactic/tf2_ros
	ros-galactic/visualization_msgs
	sci-libs/pcl
	dev-lang/lua:5.2
	dev-cpp/yaml-cpp
"
DEPEND="${RDEPEND}
	ros-galactic/ament_cmake
	ros-galactic/pcl_conversions
	ros-galactic/tf2_eigen
	ros-galactic/urdfdom_headers
	dev-cpp/eigen
"

SLOT="0"
ROS_DISTRO="galactic"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
