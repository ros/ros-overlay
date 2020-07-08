# Copyright 2020 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{3_5,3_6} )

inherit ament-cmake

DESCRIPTION="Refactored map server for ROS2 Navigation"
HOMEPAGE="https://wiki.ros.org"
SRC_URI="https://github.com/SteveMacenski/navigation2-release/archive/release/eloquent/${PN}/0.3.5-1.tar.gz -> ${PN}-eloquent-release-${PV}.tar.gz"

LICENSE="( Apache-2.0 BSD )"
KEYWORDS="~x86 ~amd64 ~arm ~arm64"
IUSE="test"
RDEPEND="
	ros-eloquent/launch_ros
	ros-eloquent/launch_testing
	ros-eloquent/nav2_util
	ros-eloquent/nav_msgs
	ros-eloquent/rclcpp
	ros-eloquent/rclcpp_lifecycle
	ros-eloquent/std_msgs
	ros-eloquent/tf2
	ros-eloquent/yaml_cpp_vendor
	test? ( ros-eloquent/ament_cmake_gtest )
	test? ( ros-eloquent/ament_cmake_pytest )
	test? ( ros-eloquent/ament_lint_auto )
	test? ( ros-eloquent/ament_lint_common )
	test? ( ros-eloquent/launch )
	test? ( ros-eloquent/launch_testing )
	virtual/imagemagick-tools
"
DEPEND="${RDEPEND}
	ros-eloquent/ament_cmake
	ros-eloquent/nav2_common
"

SLOT="0"
ROS_DISTRO="eloquent"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
