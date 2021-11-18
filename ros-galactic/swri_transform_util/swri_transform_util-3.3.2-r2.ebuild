# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=7
PYTHON_COMPAT=( python{3_8,3_9,3_10} )

inherit ament-cmake

DESCRIPTION="The swri_transform_util package contains utility functions and classes for\[...]"
HOMEPAGE="https://github.com/swri-robotics/marti_common"
SRC_URI="https://github.com/swri-robotics-gbp/marti_common-release/archive/release/galactic/${PN}/3.3.2-2.tar.gz -> ${PN}-galactic-release-${PV}.tar.gz"

LICENSE="BSD"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
RDEPEND="
	ros-galactic/cv_bridge
	ros-galactic/diagnostic_msgs
	ros-galactic/geographic_msgs
	ros-galactic/geometry_msgs
	ros-galactic/gps_msgs
	ros-galactic/launch_xml
	ros-galactic/marti_nav_msgs
	ros-galactic/rcl_interfaces
	ros-galactic/rclcpp
	ros-galactic/rclcpp_components
	ros-galactic/rclpy
	ros-galactic/sensor_msgs
	ros-galactic/swri_math_util
	ros-galactic/swri_roscpp
	ros-galactic/tf2
	ros-galactic/tf2_geometry_msgs
	ros-galactic/tf2_py
	ros-galactic/tf2_ros
	dev-libs/boost[python]
	sci-libs/geos
	sci-libs/proj
	dev-python/numpy
	dev-cpp/yaml-cpp
"
DEPEND="${RDEPEND}
	ros-galactic/ament_cmake
	ros-galactic/ament_cmake_python
	virtual/pkgconfig
"

SLOT="0"
ROS_DISTRO="galactic"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
