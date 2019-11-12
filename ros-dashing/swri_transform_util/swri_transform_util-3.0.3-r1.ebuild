# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{3_5,3_6} )

inherit ament-cmake

DESCRIPTION="The swri_transform_util package contains utility functions and classes for\[...]"
HOMEPAGE="https://github.com/swri-robotics/marti_common"
SRC_URI="https://github.com/swri-robotics-gbp/marti_common-release/archive/release/dashing/${PN}/3.0.3-1.tar.gz -> ${PN}-dashing-release-${PV}.tar.gz"

LICENSE="BSD"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
RDEPEND="
	ros-dashing/cv_bridge
	ros-dashing/diagnostic_msgs
	ros-dashing/geographic_msgs
	ros-dashing/geometry_msgs
	ros-dashing/gps_msgs
	ros-dashing/rcl_interfaces
	ros-dashing/rclcpp
	ros-dashing/rclcpp_components
	ros-dashing/rclpy
	ros-dashing/sensor_msgs
	ros-dashing/swri_math_util
	ros-dashing/swri_roscpp
	ros-dashing/tf2
	ros-dashing/tf2_geometry_msgs
	ros-dashing/tf2_ros
	dev-libs/boost[python]
	sci-libs/geos
	sci-libs/proj
	dev-cpp/yaml-cpp
"
DEPEND="${RDEPEND}
	ros-dashing/ament_cmake
	ros-dashing/ament_cmake_python
	virtual/pkgconfig
"

SLOT="0"
ROS_DISTRO="dashing"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
