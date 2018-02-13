# Copyright 2018 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{2_7,3_5} )

inherit ros-cmake

DESCRIPTION="Common rviz API, used by rviz plugins and applications."
HOMEPAGE="https://github.com/ros2/rviz"
SRC_URI="https://github.com/ros2-gbp/rviz-release/archive/release/ardent/${PN}/3.0.0-1.tar.gz -> ${PN}-ardent-release-${PV}.tar.gz"

LICENSE="BSD"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
IUSE="test"
RDEPEND="
	ros-ardent/geometry_msgs
	ros-ardent/pluginlib
	ros-ardent/rclcpp
	ros-ardent/resource_retriever
	ros-ardent/rviz_assimp_vendor
	ros-ardent/rviz_ogre_vendor
	ros-ardent/rviz_rendering
	ros-ardent/rviz_yaml_cpp_vendor
	ros-ardent/sensor_msgs
	ros-ardent/std_msgs
	ros-ardent/tf2
	ros-ardent/tf2_geometry_msgs
	ros-ardent/tf2_ros
	ros-ardent/tinyxml_vendor
	ros-ardent/urdf
	test? ( ros-ardent/ament_cmake_cppcheck )
	test? ( ros-ardent/ament_cmake_cpplint )
	test? ( ros-ardent/ament_cmake_gmock )
	test? ( ros-ardent/ament_cmake_gtest )
	test? ( ros-ardent/ament_cmake_lint_cmake )
	test? ( ros-ardent/ament_cmake_uncrustify )
	dev-qt/qtcore:5
	dev-qt/qtgui:5
	dev-qt/qtopengl:5
	dev-qt/qtwidgets:5
	dev-qt/qtcore:5
"
DEPEND="${RDEPEND}
	ros-ardent/ament_cmake
"

SLOT="0"
ROS_DISTRO="ardent"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
