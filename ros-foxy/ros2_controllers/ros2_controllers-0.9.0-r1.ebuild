# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{3_8,3_9,3_10} )

inherit ament-cmake

DESCRIPTION="Metapackage for ROS2 controllers related packages"
HOMEPAGE="https://wiki.ros.org"
SRC_URI="https://github.com/ros2-gbp/${PN}-release/archive/release/foxy/${PN}/0.9.0-1.tar.gz -> ${PN}-foxy-release-${PV}.tar.gz"

LICENSE="Apache-2.0"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
RDEPEND="
	ros-foxy/diff_drive_controller
	ros-foxy/effort_controllers
	ros-foxy/force_torque_sensor_broadcaster
	ros-foxy/forward_command_controller
	ros-foxy/imu_sensor_broadcaster
	ros-foxy/joint_state_broadcaster
	ros-foxy/joint_state_controller
	ros-foxy/joint_trajectory_controller
	ros-foxy/position_controllers
	ros-foxy/tricycle_controller
	ros-foxy/velocity_controllers
"
DEPEND="${RDEPEND}
	ros-foxy/ament_cmake
"

SLOT="0"
ROS_DISTRO="foxy"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
