# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=8
PYTHON_COMPAT=( python{3_8,3_9,3_10,3_11} )

inherit ament-cmake

DESCRIPTION="An example package with MoveIt2 configurations for UR robots."
HOMEPAGE="https://wiki.ros.org"
SRC_URI="https://github.com/ros2-gbp/Universal_Robots_ROS2_Driver-release/archive/release/humble/${PN}/2.2.6-1.tar.gz -> ${PN}-humble-release-${PV}.tar.gz"

LICENSE="Apache-2.0"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
RDEPEND="
	ros-humble/launch
	ros-humble/launch_ros
	ros-humble/moveit_kinematics
	ros-humble/moveit_planners_ompl
	ros-humble/moveit_ros_move_group
	ros-humble/moveit_ros_visualization
	ros-humble/moveit_servo
	ros-humble/moveit_simple_controller_manager
	ros-humble/rviz2
	ros-humble/ur_description
	ros-humble/urdf
	ros-humble/warehouse_ros_sqlite
	ros-humble/xacro
"
DEPEND="${RDEPEND}
	ros-humble/ament_cmake
	ros-humble/ament_cmake_python
"

SLOT="0"
ROS_DISTRO="humble"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
