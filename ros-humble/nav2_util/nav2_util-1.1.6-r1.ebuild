# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=8
PYTHON_COMPAT=( python{3_8,3_9,3_10,3_11} )

inherit ament-cmake

DESCRIPTION="TODO"
HOMEPAGE="https://wiki.ros.org"
SRC_URI="https://github.com/SteveMacenski/navigation2-release/archive/release/humble/${PN}/1.1.6-1.tar.gz -> ${PN}-humble-release-${PV}.tar.gz"

LICENSE="( Apache-2.0 BSD-3-Clause )"
KEYWORDS="~x86 ~amd64 ~arm ~arm64"
IUSE="test"
RDEPEND="
	ros-humble/action_msgs
	ros-humble/bond
	ros-humble/bondcpp
	ros-humble/geometry_msgs
	ros-humble/launch
	ros-humble/launch_testing_ament_cmake
	ros-humble/lifecycle_msgs
	ros-humble/nav2_common
	ros-humble/nav2_msgs
	ros-humble/nav_msgs
	ros-humble/rclcpp
	ros-humble/rclcpp_action
	ros-humble/rclcpp_lifecycle
	ros-humble/tf2
	ros-humble/tf2_geometry_msgs
	ros-humble/tf2_ros
	test? ( ros-humble/action_msgs )
	test? ( ros-humble/ament_cmake_gtest )
	test? ( ros-humble/ament_cmake_pytest )
	test? ( ros-humble/ament_lint_auto )
	test? ( ros-humble/ament_lint_common )
	test? ( ros-humble/launch )
	test? ( ros-humble/launch_testing_ament_cmake )
	test? ( ros-humble/launch_testing_ros )
	test? ( ros-humble/std_srvs )
	test? ( ros-humble/test_msgs )
	dev-libs/boost
"
DEPEND="${RDEPEND}
	ros-humble/ament_cmake
	dev-libs/boost
"

SLOT="0"
ROS_DISTRO="humble"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
