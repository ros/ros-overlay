# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{3_5,3_6} )

inherit ament-cmake

DESCRIPTION="ign_ros2_control_demos"
HOMEPAGE="https://github.com/ignitionrobotics/ign_ros2_control/blob/main/README.md"
SRC_URI="https://github.com/ros2-gbp/ign_ros2_control-release/archive/release/galactic/${PN}/0.4.1-1.tar.gz -> ${PN}-galactic-release-${PV}.tar.gz"

LICENSE="Apache-2.0"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
IUSE="test"
RDEPEND="
	ros-galactic/ament_index_python
	ros-galactic/control_msgs
	ros-galactic/diff_drive_controller
	ros-galactic/effort_controllers
	ros-galactic/geometry_msgs
	ros-galactic/hardware_interface
	ros-galactic/ign_ros2_control
	ros-galactic/imu_sensor_broadcaster
	ros-galactic/joint_state_broadcaster
	ros-galactic/joint_trajectory_controller
	ros-galactic/launch
	ros-galactic/launch_ros
	ros-galactic/rclcpp
	ros-galactic/robot_state_publisher
	ros-galactic/ros2controlcli
	ros-galactic/ros_ign_gazebo
	ros-galactic/std_msgs
	ros-galactic/velocity_controllers
	ros-galactic/xacro
	test? ( ros-galactic/ament_cmake_gtest )
	test? ( ros-galactic/ament_lint_auto )
	test? ( ros-galactic/ament_lint_common )
"
DEPEND="${RDEPEND}
	ros-galactic/ament_cmake
	ros-galactic/rclcpp_action
"

SLOT="0"
ROS_DISTRO="galactic"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
