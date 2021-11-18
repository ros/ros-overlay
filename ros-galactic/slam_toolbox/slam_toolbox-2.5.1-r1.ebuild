# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=7
PYTHON_COMPAT=( python{3_8,3_9,3_10} )

inherit ament-cmake

DESCRIPTION="This package provides a sped up improved slam karto with updated SDK and vi[...]"
HOMEPAGE="https://wiki.ros.org"
SRC_URI="https://github.com/SteveMacenski/${PN}-release/archive/release/galactic/${PN}/2.5.1-1.tar.gz -> ${PN}-galactic-release-${PV}.tar.gz"

LICENSE="LGPL-2"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
IUSE="test"
RDEPEND="
	ros-galactic/builtin_interfaces
	ros-galactic/interactive_markers
	ros-galactic/message_filters
	ros-galactic/nav2_map_server
	ros-galactic/nav_msgs
	ros-galactic/pluginlib
	ros-galactic/rclcpp
	ros-galactic/rosidl_default_generators
	ros-galactic/rviz_common
	ros-galactic/rviz_default_plugins
	ros-galactic/rviz_ogre_vendor
	ros-galactic/rviz_rendering
	ros-galactic/sensor_msgs
	ros-galactic/std_msgs
	ros-galactic/std_srvs
	ros-galactic/tf2
	ros-galactic/tf2_geometry_msgs
	ros-galactic/tf2_ros
	ros-galactic/tf2_sensor_msgs
	ros-galactic/visualization_msgs
	test? ( ros-galactic/ament_cmake_cpplint )
	test? ( ros-galactic/ament_cmake_flake8 )
	test? ( ros-galactic/ament_cmake_gtest )
	test? ( ros-galactic/ament_cmake_uncrustify )
	test? ( ros-galactic/ament_lint_auto )
	test? ( ros-galactic/launch )
	test? ( ros-galactic/launch_testing )
	dev-libs/boost[python]
	dev-cpp/eigen
	sci-libs/ceres-solver[sparse,lapack]
	virtual/lapack
	dev-qt/qtcore:5
	dev-qt/qtgui:5
	dev-qt/qtopengl:5
	dev-qt/qtwidgets:5
	sci-libs/suitesparse
	dev-cpp/tbb
"
DEPEND="${RDEPEND}
	ros-galactic/ament_cmake
	dev-qt/qtcore:5
	dev-qt/qtwidgets:5
	dev-qt/qttest:5
"

SLOT="0"
ROS_DISTRO="galactic"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
