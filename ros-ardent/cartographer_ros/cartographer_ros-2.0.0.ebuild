# Copyright 2018 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{2_7,3_5} )

inherit ros-cmake

DESCRIPTION="Cartographer is a system that provides real-time simultaneous localization\[...]"
HOMEPAGE="https://github.com/ros2/cartographer_ros"
SRC_URI="https://github.com/ros2-gbp/${PN}-release/archive/release/ardent/${PN}/2.0.0-0.tar.gz -> ${PN}-ardent-release-${PV}.tar.gz"

LICENSE="Apache-2.0"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
RDEPEND="
	ros-ardent/cartographer
	ros-ardent/cartographer_ros_msgs
	ros-ardent/console_bridge
	ros-ardent/nav_msgs
	ros-ardent/rclcpp
	ros-ardent/sensor_msgs
	ros-ardent/tf2
	ros-ardent/tf2_msgs
	ros-ardent/tf2_ros
	sci-libs/pcl
	dev-lang/lua:5.2
	dev-cpp/yaml-cpp
"
DEPEND="${RDEPEND}
	ros-ardent/ament_cmake
	ros-ardent/pcl_conversions
	ros-ardent/tf2_eigen
	ros-ardent/urdfdom_headers
	dev-cpp/eigen
"

SLOT="0"
ROS_DISTRO="ardent"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
