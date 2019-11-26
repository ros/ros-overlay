# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{3_5,3_6} )

inherit ament-cmake

DESCRIPTION="3D visualization tool for ROS."
HOMEPAGE="https://github.com/ros2/rviz/blob/ros2/README.md"
SRC_URI="https://github.com/ros2-gbp/rviz-release/archive/release/eloquent/${PN}/7.0.3-1.tar.gz -> ${PN}-eloquent-release-${PV}.tar.gz"

LICENSE="BSD"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
IUSE="test"
RDEPEND="
	ros-eloquent/rviz_common
	ros-eloquent/rviz_default_plugins
	ros-eloquent/rviz_ogre_vendor
	test? ( ros-eloquent/ament_cmake_cppcheck )
	test? ( ros-eloquent/ament_cmake_cpplint )
	test? ( ros-eloquent/ament_cmake_lint_cmake )
	test? ( ros-eloquent/ament_cmake_uncrustify )
	test? ( ros-eloquent/geometry_msgs )
	test? ( ros-eloquent/rclcpp )
	test? ( ros-eloquent/sensor_msgs )
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
