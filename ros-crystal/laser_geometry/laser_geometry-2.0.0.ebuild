# Copyright 2018 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{3_5,3_6} )

inherit ament-cmake

DESCRIPTION="This package contains a class for converting from a 2D laser scan as define[...]"
HOMEPAGE="http://ros.org/wiki/laser_geometry"
SRC_URI="https://github.com/ros2-gbp/${PN}-release/archive/release/crystal/${PN}/2.0.0-0.tar.gz -> ${PN}-crystal-release-${PV}.tar.gz"

LICENSE="BSD"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
IUSE="test"
RDEPEND="
	ros-crystal/ament_cmake
	ros-crystal/rclcpp
	ros-crystal/sensor_msgs
	ros-crystal/tf2
	test? ( ros-crystal/ament_cmake_cppcheck )
	test? ( ros-crystal/ament_cmake_cpplint )
	test? ( ros-crystal/ament_cmake_gmock )
	test? ( ros-crystal/ament_cmake_gtest )
	test? ( ros-crystal/ament_cmake_lint_cmake )
	test? ( ros-crystal/ament_cmake_uncrustify )
	dev-cpp/eigen
"
DEPEND="${RDEPEND}
"

SLOT="0"
ROS_DISTRO="crystal"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
