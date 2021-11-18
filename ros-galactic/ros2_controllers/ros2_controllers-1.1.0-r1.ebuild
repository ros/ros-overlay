# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=7
PYTHON_COMPAT=( python{3_8,3_9,3_10} )

inherit ament-cmake

DESCRIPTION="Metapackage for ROS2 controllers related packages"
HOMEPAGE="https://wiki.ros.org"
SRC_URI="https://github.com/ros2-gbp/${PN}-release/archive/release/galactic/${PN}/1.1.0-1.tar.gz -> ${PN}-galactic-release-${PV}.tar.gz"

LICENSE="Apache-2.0"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
RDEPEND="
	ros-galactic/diff_drive_controller
	ros-galactic/effort_controllers
	ros-galactic/force_torque_sensor_broadcaster
	ros-galactic/forward_command_controller
	ros-galactic/imu_sensor_broadcaster
	ros-galactic/joint_state_broadcaster
	ros-galactic/joint_trajectory_controller
	ros-galactic/position_controllers
	ros-galactic/velocity_controllers
"
DEPEND="${RDEPEND}
	ros-galactic/ament_cmake
"

SLOT="0"
ROS_DISTRO="galactic"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
