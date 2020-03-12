# Copyright 2020 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{3_5,3_6} )

inherit ament-cmake

DESCRIPTION="Model-based distributed configuration handling."
HOMEPAGE="https://wiki.ros.org"
SRC_URI="https://github.com/microROS/${PN}-release/archive/release/dashing/${PN}/0.2.0-3.tar.gz -> ${PN}-dashing-release-${PV}.tar.gz"

LICENSE="Apache-2.0"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
IUSE="test"
RDEPEND="
	ros-dashing/builtin_interfaces
	ros-dashing/rclcpp
	ros-dashing/rclcpp_lifecycle
	ros-dashing/rosidl_default_generators
	ros-dashing/std_msgs
	test? ( ros-dashing/ament_cmake )
	test? ( ros-dashing/ament_cmake_cppcheck )
	test? ( ros-dashing/ament_cmake_cpplint )
	test? ( ros-dashing/ament_cmake_flake8 )
	test? ( ros-dashing/ament_cmake_gmock )
	test? ( ros-dashing/ament_cmake_gtest )
	test? ( ros-dashing/ament_cmake_pep257 )
	test? ( ros-dashing/ament_cmake_uncrustify )
	test? ( ros-dashing/ament_lint_auto )
	dev-libs/boost
"
DEPEND="${RDEPEND}
	ros-dashing/ament_cmake_ros
"

SLOT="0"
ROS_DISTRO="dashing"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
