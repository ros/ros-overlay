# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{3_8,3_9,3_10} )

inherit ament-cmake

DESCRIPTION="Provides real-time manipulator Cartesian and joint servoing."
HOMEPAGE="https://ros-planning.github.io/moveit_tutorials"
SRC_URI="https://github.com/ros2-gbp/moveit2-release/archive/release/humble/${PN}/2.5.4-1.tar.gz -> ${PN}-humble-release-${PV}.tar.gz"

LICENSE="BSD-3-Clause"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
IUSE="test"
RDEPEND="
	ros-humble/control_msgs
	ros-humble/control_toolbox
	ros-humble/geometry_msgs
	ros-humble/gripper_controllers
	ros-humble/joint_state_broadcaster
	ros-humble/joint_trajectory_controller
	ros-humble/joy
	ros-humble/launch_param_builder
	ros-humble/moveit_common
	ros-humble/moveit_configs_utils
	ros-humble/moveit_core
	ros-humble/moveit_msgs
	ros-humble/moveit_ros_planning_interface
	ros-humble/pluginlib
	ros-humble/robot_state_publisher
	ros-humble/sensor_msgs
	ros-humble/std_msgs
	ros-humble/std_srvs
	ros-humble/tf2_eigen
	ros-humble/tf2_ros
	ros-humble/trajectory_msgs
	test? ( ros-humble/ament_cmake_gtest )
	test? ( ros-humble/ament_lint_auto )
	test? ( ros-humble/ament_lint_common )
	test? ( ros-humble/controller_manager )
	test? ( ros-humble/moveit_resources_panda_moveit_config )
	test? ( ros-humble/ros_testing )
"
DEPEND="${RDEPEND}
	ros-humble/ament_cmake
"

SLOT="0"
ROS_DISTRO="humble"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
