# Copyright 2020 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{3_5,3_6} )

inherit ament-cmake

DESCRIPTION="TODO"
HOMEPAGE="https://wiki.ros.org"
SRC_URI="https://github.com/SteveMacenski/navigation2-release/archive/release/dashing/${PN}/0.2.6-1.tar.gz -> ${PN}-dashing-release-${PV}.tar.gz"

LICENSE="( Apache-2.0 BSD )"
KEYWORDS="~x86 ~amd64 ~arm ~arm64"
IUSE="test"
RDEPEND="
	ros-dashing/geometry_msgs
	ros-dashing/lifecycle_msgs
	ros-dashing/nav2_common
	ros-dashing/nav2_msgs
	ros-dashing/nav_msgs
	ros-dashing/rclcpp
	ros-dashing/rclcpp_action
	ros-dashing/rclcpp_lifecycle
	ros-dashing/test_msgs
	ros-dashing/tf2
	ros-dashing/tf2_geometry_msgs
	ros-dashing/tf2_ros
	test? ( ros-dashing/ament_cmake_gtest )
	test? ( ros-dashing/ament_cmake_pytest )
	test? ( ros-dashing/ament_lint_auto )
	test? ( ros-dashing/ament_lint_common )
	test? ( ros-dashing/launch )
	test? ( ros-dashing/launch_testing )
	test? ( ros-dashing/rclcpp_action )
	test? ( ros-dashing/rclcpp_lifecycle )
	test? ( ros-dashing/std_srvs )
	test? ( ros-dashing/test_msgs )
	dev-libs/boost
	media-libs/libsdl
	media-libs/sdl-image
"
DEPEND="${RDEPEND}
	ros-dashing/ament_cmake
	dev-libs/boost
"

SLOT="0"
ROS_DISTRO="dashing"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
