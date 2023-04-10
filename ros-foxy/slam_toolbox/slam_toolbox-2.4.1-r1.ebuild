# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{3_8,3_9,3_10} )

inherit ament-cmake

DESCRIPTION="This package provides a sped up improved slam karto with updated SDK and vi[...]"
HOMEPAGE="https://wiki.ros.org"
SRC_URI="https://github.com/SteveMacenski/${PN}-release/archive/release/foxy/${PN}/2.4.1-1.tar.gz -> ${PN}-foxy-release-${PV}.tar.gz"

LICENSE="LGPL"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
IUSE="test"
RDEPEND="
	ros-foxy/builtin_interfaces
	ros-foxy/interactive_markers
	ros-foxy/message_filters
	ros-foxy/nav2_common
	ros-foxy/nav2_map_server
	ros-foxy/nav_msgs
	ros-foxy/pluginlib
	ros-foxy/rclcpp
	ros-foxy/rosidl_default_generators
	ros-foxy/rviz_common
	ros-foxy/rviz_default_plugins
	ros-foxy/rviz_ogre_vendor
	ros-foxy/rviz_rendering
	ros-foxy/sensor_msgs
	ros-foxy/std_msgs
	ros-foxy/std_srvs
	ros-foxy/tf2
	ros-foxy/tf2_geometry_msgs
	ros-foxy/tf2_ros
	ros-foxy/tf2_sensor_msgs
	ros-foxy/visualization_msgs
	test? ( ros-foxy/ament_cmake_cpplint )
	test? ( ros-foxy/ament_cmake_flake8 )
	test? ( ros-foxy/ament_cmake_gtest )
	test? ( ros-foxy/ament_cmake_uncrustify )
	test? ( ros-foxy/ament_lint_auto )
	test? ( ros-foxy/launch )
	test? ( ros-foxy/launch_testing )
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
	ros-foxy/ament_cmake
	dev-qt/qtcore:5
	dev-qt/qtwidgets:5
	dev-qt/qttest:5
"

SLOT="0"
ROS_DISTRO="foxy"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
