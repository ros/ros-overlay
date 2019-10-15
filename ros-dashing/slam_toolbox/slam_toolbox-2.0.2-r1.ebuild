# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{3_5,3_6} )

inherit ament-cmake

DESCRIPTION="This package provides a sped up improved slam karto with updated SDK and vi[...]"
HOMEPAGE="https://wiki.ros.org"
SRC_URI="https://github.com/SteveMacenski/${PN}-release/archive/release/dashing/${PN}/2.0.2-1.tar.gz -> ${PN}-dashing-release-${PV}.tar.gz"

LICENSE="LGPL-2"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
IUSE="test"
RDEPEND="
	ros-dashing/builtin_interfaces
	ros-dashing/message_filters
	ros-dashing/nav2_map_server
	ros-dashing/nav_msgs
	ros-dashing/pluginlib
	ros-dashing/rclcpp
	ros-dashing/rosidl_default_generators
	ros-dashing/rviz_common
	ros-dashing/rviz_default_plugins
	ros-dashing/rviz_rendering
	ros-dashing/sensor_msgs
	ros-dashing/std_msgs
	ros-dashing/std_srvs
	ros-dashing/tf2
	ros-dashing/tf2_geometry_msgs
	ros-dashing/tf2_ros
	ros-dashing/tf2_sensor_msgs
	ros-dashing/visualization_msgs
	test? ( ros-dashing/ament_cmake_gtest )
	test? ( ros-dashing/launch )
	test? ( ros-dashing/launch_testing )
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
	ros-dashing/ament_cmake
	dev-qt/qtcore:5
	dev-qt/qtwidgets:5
	dev-qt/qttest:5
"

SLOT="0"
ROS_DISTRO="dashing"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
