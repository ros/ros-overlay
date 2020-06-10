# Copyright 2020 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{3_5,3_6} )

inherit ament-cmake

DESCRIPTION="Cartographer is a system that provides real-time simultaneous localization\[...]"
HOMEPAGE="https://github.com/ros2/cartographer_ros"
SRC_URI="https://github.com/ros2-gbp/${PN}-release/archive/release/foxy/${PN}/1.0.9001-1.tar.gz -> ${PN}-foxy-release-${PV}.tar.gz"

LICENSE="Apache-2.0"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
RDEPEND="
	ros-foxy/cartographer
	ros-foxy/cartographer_ros_msgs
	ros-foxy/nav_msgs
	ros-foxy/rclcpp
	ros-foxy/sensor_msgs
	ros-foxy/tf2
	ros-foxy/tf2_msgs
	ros-foxy/tf2_ros
	ros-foxy/visualization_msgs
	sci-libs/pcl
	dev-lang/lua:5.2
	dev-cpp/yaml-cpp
"
DEPEND="${RDEPEND}
	ros-foxy/ament_cmake
	ros-foxy/pcl_conversions
	ros-foxy/tf2_eigen
	ros-foxy/urdfdom_headers
	dev-cpp/eigen
"

SLOT="0"
ROS_DISTRO="foxy"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
