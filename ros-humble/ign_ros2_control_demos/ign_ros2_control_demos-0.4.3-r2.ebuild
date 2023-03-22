# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{3_8,3_9,3_10} )

inherit ament-cmake

DESCRIPTION="ign_ros2_control_demos"
HOMEPAGE="https://github.com/ros-controls/gz_ros2_control/blob/main/README.md"
SRC_URI="https://github.com/ros2-gbp/ign_ros2_control-release/archive/release/humble/${PN}/0.4.3-2.tar.gz -> ${PN}-humble-release-${PV}.tar.gz"

LICENSE="Apache-2.0"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
IUSE="test"
RDEPEND="
	ros-humble/ament_index_python
	ros-humble/control_msgs
	ros-humble/diff_drive_controller
	ros-humble/effort_controllers
	ros-humble/geometry_msgs
	ros-humble/hardware_interface
	ros-humble/ign_ros2_control
	ros-humble/imu_sensor_broadcaster
	ros-humble/joint_state_broadcaster
	ros-humble/joint_trajectory_controller
	ros-humble/launch
	ros-humble/launch_ros
	ros-humble/rclcpp
	ros-humble/robot_state_publisher
	ros-humble/ros2controlcli
	ros-humble/ros_ign_gazebo
	ros-humble/std_msgs
	ros-humble/tricycle_controller
	ros-humble/velocity_controllers
	ros-humble/xacro
	test? ( ros-humble/ament_cmake_gtest )
	test? ( ros-humble/ament_lint_auto )
	test? ( ros-humble/ament_lint_common )
"
DEPEND="${RDEPEND}
	ros-humble/ament_cmake
	ros-humble/rclcpp_action
"

SLOT="0"
ROS_DISTRO="humble"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
