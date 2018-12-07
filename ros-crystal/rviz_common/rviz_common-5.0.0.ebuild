# Copyright 2018 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{3_5,3_6} )

inherit ament-cmake

DESCRIPTION="Common rviz API, used by rviz plugins and applications."
HOMEPAGE="https://github.com/ros2/rviz/blob/ros2/README.md"
SRC_URI="https://github.com/ros2-gbp/rviz-release/archive/release/crystal/${PN}/5.0.0-0.tar.gz -> ${PN}-crystal-release-${PV}.tar.gz"

LICENSE="BSD"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
IUSE="test"
RDEPEND="
	ros-crystal/geometry_msgs
	ros-crystal/pluginlib
	ros-crystal/rclcpp
	ros-crystal/resource_retriever
	ros-crystal/rviz_assimp_vendor
	ros-crystal/rviz_ogre_vendor
	ros-crystal/rviz_rendering
	ros-crystal/sensor_msgs
	ros-crystal/std_msgs
	ros-crystal/tf2
	ros-crystal/tf2_geometry_msgs
	ros-crystal/tf2_ros
	ros-crystal/tinyxml_vendor
	ros-crystal/urdf
	ros-crystal/yaml_cpp_vendor
	test? ( ros-crystal/ament_cmake_cppcheck )
	test? ( ros-crystal/ament_cmake_cpplint )
	test? ( ros-crystal/ament_cmake_gmock )
	test? ( ros-crystal/ament_cmake_gtest )
	test? ( ros-crystal/ament_cmake_lint_cmake )
	test? ( ros-crystal/ament_cmake_uncrustify )
	dev-qt/qtcore:5
	dev-qt/qtgui:5
	dev-qt/qtopengl:5
	dev-qt/qtwidgets:5
	dev-qt/qtcore:5
"
DEPEND="${RDEPEND}
	ros-crystal/ament_cmake
"

SLOT="0"
ROS_DISTRO="crystal"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
