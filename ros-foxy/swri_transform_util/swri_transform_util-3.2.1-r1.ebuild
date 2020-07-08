# Copyright 2020 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{3_5,3_6} )

inherit ament-cmake

DESCRIPTION="The swri_transform_util package contains utility functions and classes for\[...]"
HOMEPAGE="https://github.com/swri-robotics/marti_common"
SRC_URI="https://github.com/swri-robotics-gbp/marti_common-release/archive/release/foxy/${PN}/3.2.1-1.tar.gz -> ${PN}-foxy-release-${PV}.tar.gz"

LICENSE="BSD"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
RDEPEND="
	ros-foxy/cv_bridge
	ros-foxy/diagnostic_msgs
	ros-foxy/geographic_msgs
	ros-foxy/geometry_msgs
	ros-foxy/gps_msgs
	ros-foxy/launch_xml
	ros-foxy/marti_nav_msgs
	ros-foxy/rcl_interfaces
	ros-foxy/rclcpp
	ros-foxy/rclcpp_components
	ros-foxy/rclpy
	ros-foxy/sensor_msgs
	ros-foxy/swri_math_util
	ros-foxy/swri_roscpp
	ros-foxy/tf2
	ros-foxy/tf2_geometry_msgs
	ros-foxy/tf2_py
	ros-foxy/tf2_ros
	dev-libs/boost[python]
	sci-libs/geos
	sci-libs/proj
	dev-cpp/yaml-cpp
"
DEPEND="${RDEPEND}
	ros-foxy/ament_cmake
	ros-foxy/ament_cmake_python
	virtual/pkgconfig
"

SLOT="0"
ROS_DISTRO="foxy"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
