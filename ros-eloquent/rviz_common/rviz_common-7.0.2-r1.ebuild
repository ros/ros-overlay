# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{3_5,3_6} )

inherit ament-cmake

DESCRIPTION="Common rviz API, used by rviz plugins and applications."
HOMEPAGE="https://github.com/ros2/rviz/blob/ros2/README.md"
SRC_URI="https://github.com/ros2-gbp/rviz-release/archive/release/eloquent/${PN}/7.0.2-1.tar.gz -> ${PN}-eloquent-release-${PV}.tar.gz"

LICENSE="BSD"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
IUSE="test"
RDEPEND="
	ros-eloquent/geometry_msgs
	ros-eloquent/message_filters
	ros-eloquent/pluginlib
	ros-eloquent/rclcpp
	ros-eloquent/resource_retriever
	ros-eloquent/rviz_assimp_vendor
	ros-eloquent/rviz_ogre_vendor
	ros-eloquent/rviz_rendering
	ros-eloquent/sensor_msgs
	ros-eloquent/std_msgs
	ros-eloquent/tf2
	ros-eloquent/tf2_geometry_msgs
	ros-eloquent/tf2_ros
	ros-eloquent/tinyxml_vendor
	ros-eloquent/urdf
	ros-eloquent/yaml_cpp_vendor
	test? ( ros-eloquent/ament_cmake_cppcheck )
	test? ( ros-eloquent/ament_cmake_cpplint )
	test? ( ros-eloquent/ament_cmake_gmock )
	test? ( ros-eloquent/ament_cmake_gtest )
	test? ( ros-eloquent/ament_cmake_lint_cmake )
	test? ( ros-eloquent/ament_cmake_uncrustify )
	dev-qt/qtcore:5
	dev-qt/qtgui:5
	dev-qt/qtopengl:5
	dev-qt/qtwidgets:5
	dev-qt/qtcore:5
	dev-qt/qtwidgets:5
	dev-qt/qttest:5
"
DEPEND="${RDEPEND}
	ros-eloquent/ament_cmake
"

SLOT="0"
ROS_DISTRO="eloquent"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
