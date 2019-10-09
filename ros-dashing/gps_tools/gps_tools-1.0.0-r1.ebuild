# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{3_5,3_6} )

inherit ament-cmake

DESCRIPTION="GPS routines for use in GPS drivers"
HOMEPAGE="http://ros.org/wiki/gps_common"
SRC_URI="https://github.com/swri-robotics-gbp/gps_umd-release/archive/release/dashing/${PN}/1.0.0-1.tar.gz -> ${PN}-dashing-release-${PV}.tar.gz"

LICENSE="BSD"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
RDEPEND="
	ros-dashing/gps_msgs
	ros-dashing/nav_msgs
	ros-dashing/rclcpp
	ros-dashing/rclcpp_components
	ros-dashing/rclpy
	ros-dashing/sensor_msgs
	ros-dashing/std_msgs
"
DEPEND="${RDEPEND}
	ros-dashing/ament_cmake
	ros-dashing/ament_cmake_python
"

SLOT="0"
ROS_DISTRO="dashing"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
