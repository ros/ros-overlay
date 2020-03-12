# Copyright 2020 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{3_5,3_6} )

inherit ament-cmake

DESCRIPTION="GPS routines for use in GPS drivers"
HOMEPAGE="http://ros.org/wiki/gps_common"
SRC_URI="https://github.com/swri-robotics-gbp/gps_umd-release/archive/release/eloquent/${PN}/1.0.2-1.tar.gz -> ${PN}-eloquent-release-${PV}.tar.gz"

LICENSE="BSD"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
RDEPEND="
	ros-eloquent/gps_msgs
	ros-eloquent/nav_msgs
	ros-eloquent/rclcpp
	ros-eloquent/rclcpp_components
	ros-eloquent/rclpy
	ros-eloquent/sensor_msgs
	ros-eloquent/std_msgs
"
DEPEND="${RDEPEND}
	ros-eloquent/ament_cmake
	ros-eloquent/ament_cmake_python
"

SLOT="0"
ROS_DISTRO="eloquent"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
