# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{3_8,3_9,3_10} )

inherit ament-cmake

DESCRIPTION="Launch file and run-time configurations, e.g. controllers."
HOMEPAGE="https://github.com/UniversalRobots/Universal_Robots_ROS2_Driver/issues"
SRC_URI="https://github.com/ros2-gbp/Universal_Robots_ROS2_Driver-release/archive/release/foxy/${PN}/2.0.2-2.tar.gz -> ${PN}-foxy-release-${PV}.tar.gz"

LICENSE="Apache-2.0"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
RDEPEND="
	ros-foxy/ament_index_python
	ros-foxy/controller_manager
	ros-foxy/joint_state_broadcaster
	ros-foxy/joint_trajectory_controller
	ros-foxy/launch
	ros-foxy/launch_ros
	ros-foxy/moveit_ros_move_group
	ros-foxy/moveit_simple_controller_manager
	ros-foxy/robot_state_publisher
	ros-foxy/rviz2
	ros-foxy/ur_controllers
	ros-foxy/ur_description
	ros-foxy/ur_moveit_config
	ros-foxy/urdf
	ros-foxy/warehouse_ros_mongo
	ros-foxy/xacro
"
DEPEND="${RDEPEND}
	ros-foxy/ament_cmake
"

SLOT="0"
ROS_DISTRO="foxy"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
