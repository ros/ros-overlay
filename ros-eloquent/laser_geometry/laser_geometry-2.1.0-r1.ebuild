# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{3_5,3_6} )

inherit ament-cmake

DESCRIPTION="This package contains a class for converting from a 2D laser scan as define[...]"
HOMEPAGE="http://ros.org/wiki/laser_geometry"
SRC_URI="https://github.com/ros2-gbp/${PN}-release/archive/release/eloquent/${PN}/2.1.0-1.tar.gz -> ${PN}-eloquent-release-${PV}.tar.gz"

LICENSE="BSD"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
IUSE="test"
RDEPEND="
	ros-eloquent/ament_cmake
	ros-eloquent/rclcpp
	ros-eloquent/sensor_msgs
	ros-eloquent/tf2
	test? ( ros-eloquent/ament_cmake_cppcheck )
	test? ( ros-eloquent/ament_cmake_cpplint )
	test? ( ros-eloquent/ament_cmake_gmock )
	test? ( ros-eloquent/ament_cmake_gtest )
	test? ( ros-eloquent/ament_cmake_lint_cmake )
	test? ( ros-eloquent/ament_cmake_uncrustify )
	dev-cpp/eigen
"
DEPEND="${RDEPEND}
	ros-eloquent/eigen3_cmake_module
"

SLOT="0"
ROS_DISTRO="eloquent"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
