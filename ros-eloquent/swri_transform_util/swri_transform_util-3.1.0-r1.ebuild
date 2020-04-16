# Copyright 2020 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{3_5,3_6} )

inherit ament-cmake

DESCRIPTION="The swri_transform_util package contains utility functions and classes for\[...]"
HOMEPAGE="https://github.com/swri-robotics/marti_common"
SRC_URI="https://github.com/swri-robotics-gbp/marti_common-release/archive/release/eloquent/${PN}/3.1.0-1.tar.gz -> ${PN}-eloquent-release-${PV}.tar.gz"

LICENSE="BSD"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
RDEPEND="
	ros-eloquent/cv_bridge
	ros-eloquent/diagnostic_msgs
	ros-eloquent/geographic_msgs
	ros-eloquent/geometry_msgs
	ros-eloquent/gps_msgs
	ros-eloquent/launch_xml
	ros-eloquent/marti_nav_msgs
	ros-eloquent/rcl_interfaces
	ros-eloquent/rclcpp
	ros-eloquent/rclcpp_components
	ros-eloquent/rclpy
	ros-eloquent/sensor_msgs
	ros-eloquent/swri_math_util
	ros-eloquent/swri_roscpp
	ros-eloquent/tf2
	ros-eloquent/tf2_geometry_msgs
	ros-eloquent/tf2_py
	ros-eloquent/tf2_ros
	dev-libs/boost[python]
	sci-libs/geos
	sci-libs/proj
	dev-cpp/yaml-cpp
"
DEPEND="${RDEPEND}
	ros-eloquent/ament_cmake
	ros-eloquent/ament_cmake_python
	virtual/pkgconfig
"

SLOT="0"
ROS_DISTRO="eloquent"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
