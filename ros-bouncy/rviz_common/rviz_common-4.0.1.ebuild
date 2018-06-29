# Copyright 2018 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{3_5,3_6} )

inherit ament-cmake

DESCRIPTION="Common rviz API, used by rviz plugins and applications."
HOMEPAGE="https://github.com/ros2/rviz/blob/ros2/README.md"
SRC_URI="https://github.com/ros2-gbp/rviz-release/archive/release/bouncy/${PN}/4.0.1-0.tar.gz -> ${PN}-bouncy-release-${PV}.tar.gz"

LICENSE="BSD"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
IUSE="test"
RDEPEND="
	ros-bouncy/geometry_msgs
	ros-bouncy/pluginlib
	ros-bouncy/rclcpp
	ros-bouncy/resource_retriever
	ros-bouncy/rviz_assimp_vendor
	ros-bouncy/rviz_ogre_vendor
	ros-bouncy/rviz_rendering
	ros-bouncy/rviz_yaml_cpp_vendor
	ros-bouncy/sensor_msgs
	ros-bouncy/std_msgs
	ros-bouncy/tf2
	ros-bouncy/tf2_geometry_msgs
	ros-bouncy/tf2_ros
	ros-bouncy/tinyxml_vendor
	ros-bouncy/urdf
	test? ( ros-bouncy/ament_cmake_cppcheck )
	test? ( ros-bouncy/ament_cmake_cpplint )
	test? ( ros-bouncy/ament_cmake_gmock )
	test? ( ros-bouncy/ament_cmake_gtest )
	test? ( ros-bouncy/ament_cmake_lint_cmake )
	test? ( ros-bouncy/ament_cmake_uncrustify )
	dev-qt/qtcore:5
	dev-qt/qtgui:5
	dev-qt/qtopengl:5
	dev-qt/qtwidgets:5
	dev-qt/qtcore:5
"
DEPEND="${RDEPEND}
	ros-bouncy/ament_cmake
"

SLOT="0"
ROS_DISTRO="bouncy"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
