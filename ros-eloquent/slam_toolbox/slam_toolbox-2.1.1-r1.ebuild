# Copyright 2020 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{3_5,3_6} )

inherit ament-cmake

DESCRIPTION="This package provides a sped up improved slam karto with updated SDK and vi[...]"
HOMEPAGE="https://wiki.ros.org"
SRC_URI="https://github.com/SteveMacenski/${PN}-release/archive/release/eloquent/${PN}/2.1.1-1.tar.gz -> ${PN}-eloquent-release-${PV}.tar.gz"

LICENSE="LGPL-2"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
IUSE="test"
RDEPEND="
	ros-eloquent/builtin_interfaces
	ros-eloquent/message_filters
	ros-eloquent/nav2_map_server
	ros-eloquent/nav_msgs
	ros-eloquent/pluginlib
	ros-eloquent/rclcpp
	ros-eloquent/rosidl_default_generators
	ros-eloquent/rviz_common
	ros-eloquent/rviz_default_plugins
	ros-eloquent/rviz_rendering
	ros-eloquent/sensor_msgs
	ros-eloquent/std_msgs
	ros-eloquent/std_srvs
	ros-eloquent/tf2
	ros-eloquent/tf2_geometry_msgs
	ros-eloquent/tf2_ros
	ros-eloquent/tf2_sensor_msgs
	ros-eloquent/visualization_msgs
	test? ( ros-eloquent/ament_cmake_gtest )
	test? ( ros-eloquent/launch )
	test? ( ros-eloquent/launch_testing )
	dev-libs/boost[python]
	dev-cpp/eigen
	sci-libs/ceres-solver[sparse,lapack]
	virtual/lapack
	dev-qt/qtcore:5
	dev-qt/qtwidgets:5
	sci-libs/suitesparse
	dev-cpp/tbb
"
DEPEND="${RDEPEND}
	ros-eloquent/ament_cmake
	dev-qt/qtcore:5
	dev-qt/qtwidgets:5
	dev-qt/qttest:5
"

SLOT="0"
ROS_DISTRO="eloquent"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
