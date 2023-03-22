# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{3_8,3_9,3_10} )

inherit ament-cmake

DESCRIPTION="Metapackage for ROS2 controllers related packages"
HOMEPAGE="https://wiki.ros.org"
SRC_URI="https://github.com/ros2-gbp/${PN}-release/archive/release/humble/${PN}/2.17.2-1.tar.gz -> ${PN}-humble-release-${PV}.tar.gz"

LICENSE="Apache-2.0"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
RDEPEND="
	ros-humble/admittance_controller
	ros-humble/diff_drive_controller
	ros-humble/effort_controllers
	ros-humble/force_torque_sensor_broadcaster
	ros-humble/forward_command_controller
	ros-humble/imu_sensor_broadcaster
	ros-humble/joint_state_broadcaster
	ros-humble/joint_trajectory_controller
	ros-humble/position_controllers
	ros-humble/tricycle_controller
	ros-humble/velocity_controllers
"
DEPEND="${RDEPEND}
	ros-humble/ament_cmake
"

SLOT="0"
ROS_DISTRO="humble"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
