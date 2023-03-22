# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{3_8,3_9,3_10} )

inherit ament-cmake

DESCRIPTION="Play a pre-recorded motion on a robot"
HOMEPAGE="https://wiki.ros.org"
SRC_URI="https://github.com/pal-gbp/${PN}-release/archive/release/humble/${PN}/0.0.4-1.tar.gz -> ${PN}-humble-release-${PV}.tar.gz"

LICENSE="Apache-2.0"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
IUSE="test"
RDEPEND="
	ros-humble/control_msgs
	ros-humble/controller_manager_msgs
	ros-humble/lifecycle_msgs
	ros-humble/play_motion2_msgs
	ros-humble/rclcpp
	ros-humble/rclcpp_action
	ros-humble/rclcpp_lifecycle
	ros-humble/sensor_msgs
	ros-humble/trajectory_msgs
	test? ( ros-humble/ament_cmake_gtest )
	test? ( ros-humble/ament_index_cpp )
	test? ( ros-humble/ament_lint_auto )
	test? ( ros-humble/ament_lint_common )
	test? ( ros-humble/controller_manager )
	test? ( ros-humble/hardware_interface )
	test? ( ros-humble/joint_state_broadcaster )
	test? ( ros-humble/joint_trajectory_controller )
	test? ( ros-humble/launch_pal )
	test? ( ros-humble/launch_ros )
	test? ( ros-humble/launch_testing_ament_cmake )
	test? ( ros-humble/pluginlib )
	test? ( ros-humble/xacro )
"
DEPEND="${RDEPEND}
	ros-humble/ament_cmake
"

SLOT="0"
ROS_DISTRO="humble"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
