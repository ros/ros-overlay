# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{3_5,3_6} )

inherit ament-cmake

DESCRIPTION="Cartographer is a system that provides real-time simultaneous localization\[...]"
HOMEPAGE="https://github.com/ros2/cartographer_ros"
SRC_URI="https://github.com/ros2-gbp/${PN}-release/archive/release/dashing/${PN}/1.0.9000-1.tar.gz -> ${PN}-dashing-release-${PV}.tar.gz"

LICENSE="Apache-2.0"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
RDEPEND="
	ros-dashing/cartographer
	ros-dashing/cartographer_ros_msgs
	ros-dashing/nav_msgs
	ros-dashing/rclcpp
	ros-dashing/sensor_msgs
	ros-dashing/tf2
	ros-dashing/tf2_msgs
	ros-dashing/tf2_ros
	ros-dashing/visualization_msgs
	sci-libs/pcl
	dev-lang/lua:5.2
	dev-cpp/yaml-cpp
"
DEPEND="${RDEPEND}
	ros-dashing/ament_cmake
	ros-dashing/pcl_conversions
	ros-dashing/tf2_eigen
	ros-dashing/urdfdom_headers
	dev-cpp/eigen
"

SLOT="0"
ROS_DISTRO="dashing"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
