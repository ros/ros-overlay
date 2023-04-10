# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=8
PYTHON_COMPAT=( python{3_8,3_9,3_10,3_11} )

inherit ament-cmake

DESCRIPTION="ROS2-control system interface for the Schunk SVH"
HOMEPAGE="https://wiki.ros.org"
SRC_URI="https://github.com/ros2-gbp/schunk_svh_ros_driver-release/archive/release/humble/${PN}/2.1.1-1.tar.gz -> ${PN}-humble-release-${PV}.tar.gz"

LICENSE="GPL-3.0-or-later"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
IUSE="test"
RDEPEND="
	ros-humble/controller_manager
	ros-humble/hardware_interface
	ros-humble/joint_state_broadcaster
	ros-humble/joint_trajectory_controller
	ros-humble/launch
	ros-humble/launch_ros
	ros-humble/pluginlib
	ros-humble/rclcpp
	ros-humble/ros2launch
	ros-humble/schunk_svh_description
	ros-humble/schunk_svh_library
	ros-humble/xacro
	test? ( ros-humble/ament_lint_auto )
"
DEPEND="${RDEPEND}
	ros-humble/ament_cmake
"

SLOT="0"
ROS_DISTRO="humble"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
