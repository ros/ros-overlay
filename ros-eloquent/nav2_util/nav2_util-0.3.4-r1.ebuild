# Copyright 2020 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{3_5,3_6} )

inherit ament-cmake

DESCRIPTION="TODO"
HOMEPAGE="https://wiki.ros.org"
SRC_URI="https://github.com/SteveMacenski/navigation2-release/archive/release/eloquent/${PN}/0.3.4-1.tar.gz -> ${PN}-eloquent-release-${PV}.tar.gz"

LICENSE="( Apache-2.0 BSD )"
KEYWORDS="~x86 ~amd64 ~arm ~arm64"
IUSE="test"
RDEPEND="
	ros-eloquent/geometry_msgs
	ros-eloquent/lifecycle_msgs
	ros-eloquent/nav2_common
	ros-eloquent/nav2_msgs
	ros-eloquent/nav_msgs
	ros-eloquent/rclcpp
	ros-eloquent/rclcpp_action
	ros-eloquent/rclcpp_lifecycle
	ros-eloquent/test_msgs
	ros-eloquent/tf2
	ros-eloquent/tf2_geometry_msgs
	ros-eloquent/tf2_ros
	test? ( ros-eloquent/ament_cmake_gtest )
	test? ( ros-eloquent/ament_lint_auto )
	test? ( ros-eloquent/ament_lint_common )
	test? ( ros-eloquent/std_srvs )
	dev-libs/boost
	media-libs/libsdl
	media-libs/sdl-image
"
DEPEND="${RDEPEND}
	ros-eloquent/ament_cmake
	dev-libs/boost
"

SLOT="0"
ROS_DISTRO="eloquent"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
