# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{3_8,3_9,3_10} )

inherit ament-cmake

DESCRIPTION="ROS2-control system interface for the Schunk SVH"
HOMEPAGE="https://wiki.ros.org"
SRC_URI="https://github.com/ros2-gbp/schunk_svh_ros_driver-release/archive/release/foxy/${PN}/2.0.1-1.tar.gz -> ${PN}-foxy-release-${PV}.tar.gz"

LICENSE="GPL-3.0-or-later"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
IUSE="test"
RDEPEND="
	ros-foxy/controller_manager
	ros-foxy/hardware_interface
	ros-foxy/joint_state_controller
	ros-foxy/joint_trajectory_controller
	ros-foxy/launch
	ros-foxy/launch_ros
	ros-foxy/pluginlib
	ros-foxy/rclcpp
	ros-foxy/ros2launch
	ros-foxy/schunk_svh_description
	ros-foxy/schunk_svh_library
	ros-foxy/xacro
	test? ( ros-foxy/ament_lint_auto )
"
DEPEND="${RDEPEND}
	ros-foxy/ament_cmake
"

SLOT="0"
ROS_DISTRO="foxy"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
