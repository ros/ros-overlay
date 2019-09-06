# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{3_5,3_6} )

inherit ament-cmake

DESCRIPTION="3D visualization tool for ROS."
HOMEPAGE="https://github.com/ros2/rviz/blob/ros2/README.md"
SRC_URI="https://github.com/ros2-gbp/rviz-release/archive/release/dashing/${PN}/6.1.4-1.tar.gz -> ${PN}-dashing-release-${PV}.tar.gz"

LICENSE="BSD"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
IUSE="test"
RDEPEND="
	ros-dashing/rviz_common
	ros-dashing/rviz_default_plugins
	ros-dashing/rviz_ogre_vendor
	test? ( ros-dashing/ament_cmake_cppcheck )
	test? ( ros-dashing/ament_cmake_cpplint )
	test? ( ros-dashing/ament_cmake_lint_cmake )
	test? ( ros-dashing/ament_cmake_uncrustify )
	test? ( ros-dashing/geometry_msgs )
	test? ( ros-dashing/rclcpp )
	test? ( ros-dashing/sensor_msgs )
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
