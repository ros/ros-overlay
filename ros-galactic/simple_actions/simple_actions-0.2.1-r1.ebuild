# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{3_5,3_6} )

inherit ament-cmake

DESCRIPTION="Simple library for using the \`rclpy/rclcpp\` action libraries"
HOMEPAGE="https://wiki.ros.org"
SRC_URI="https://github.com/DLu/${PN}-release/archive/release/galactic/${PN}/0.2.1-1.tar.gz -> ${PN}-galactic-release-${PV}.tar.gz"

LICENSE="BSD"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
IUSE="test"
RDEPEND="
	ros-galactic/action_msgs
	ros-galactic/rclcpp
	ros-galactic/rclcpp_action
	ros-galactic/rclpy
	test? ( ros-galactic/ament_cmake_clang_format )
	test? ( ros-galactic/ament_cmake_cppcheck )
	test? ( ros-galactic/ament_cmake_flake8 )
	test? ( ros-galactic/ament_cmake_lint_cmake )
	test? ( ros-galactic/ament_cmake_pep257 )
"
DEPEND="${RDEPEND}
	ros-galactic/ament_cmake
	ros-galactic/ament_cmake_python
"

SLOT="0"
ROS_DISTRO="galactic"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
