# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=8
PYTHON_COMPAT=( python{3_8,3_9,3_10,3_11} )

inherit ament-cmake

DESCRIPTION="This package provides a sped up improved slam karto with updated SDK and vi[...]"
HOMEPAGE="https://wiki.ros.org"
SRC_URI="https://github.com/SteveMacenski/${PN}-release/archive/release/humble/${PN}/2.6.4-1.tar.gz -> ${PN}-humble-release-${PV}.tar.gz"

LICENSE="LGPL"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
IUSE="test"
RDEPEND="
	ros-humble/builtin_interfaces
	ros-humble/interactive_markers
	ros-humble/message_filters
	ros-humble/nav2_map_server
	ros-humble/nav_msgs
	ros-humble/pluginlib
	ros-humble/rclcpp
	ros-humble/rosidl_default_generators
	ros-humble/rviz_common
	ros-humble/rviz_default_plugins
	ros-humble/rviz_ogre_vendor
	ros-humble/rviz_rendering
	ros-humble/sensor_msgs
	ros-humble/std_msgs
	ros-humble/std_srvs
	ros-humble/tf2
	ros-humble/tf2_geometry_msgs
	ros-humble/tf2_ros
	ros-humble/tf2_sensor_msgs
	ros-humble/visualization_msgs
	test? ( ros-humble/ament_cmake_cpplint )
	test? ( ros-humble/ament_cmake_flake8 )
	test? ( ros-humble/ament_cmake_gtest )
	test? ( ros-humble/ament_cmake_uncrustify )
	test? ( ros-humble/ament_lint_auto )
	test? ( ros-humble/launch )
	test? ( ros-humble/launch_testing )
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
	ros-humble/ament_cmake
	dev-qt/qtcore:5
	dev-qt/qtwidgets:5
	dev-qt/qttest:5
"

SLOT="0"
ROS_DISTRO="humble"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
