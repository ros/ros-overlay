# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{3_8,3_9,3_10} )

inherit ament-cmake

DESCRIPTION="Simple library for using the \`rclpy/rclcpp\` action libraries"
HOMEPAGE="https://wiki.ros.org"
SRC_URI="https://github.com/DLu/${PN}-release/archive/release/foxy/${PN}/0.2.1-1.tar.gz -> ${PN}-foxy-release-${PV}.tar.gz"

LICENSE="BSD"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
IUSE="test"
RDEPEND="
	ros-foxy/action_msgs
	ros-foxy/rclcpp
	ros-foxy/rclcpp_action
	ros-foxy/rclpy
	test? ( ros-foxy/ament_cmake_clang_format )
	test? ( ros-foxy/ament_cmake_cppcheck )
	test? ( ros-foxy/ament_cmake_flake8 )
	test? ( ros-foxy/ament_cmake_lint_cmake )
	test? ( ros-foxy/ament_cmake_pep257 )
"
DEPEND="${RDEPEND}
	ros-foxy/ament_cmake
	ros-foxy/ament_cmake_python
"

SLOT="0"
ROS_DISTRO="foxy"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
