# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{3_5,3_6} )

inherit ament-cmake

DESCRIPTION="An example package with MoveIt2 configurations for UR robots."
HOMEPAGE="https://wiki.ros.org"
SRC_URI="https://github.com/ros2-gbp/Universal_Robots_ROS2_Driver-release/archive/release/galactic/${PN}/2.1.2-1.tar.gz -> ${PN}-galactic-release-${PV}.tar.gz"

LICENSE="Apache-2.0"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
RDEPEND="
	ros-galactic/launch
	ros-galactic/launch_ros
	ros-galactic/moveit_kinematics
	ros-galactic/moveit_planners_ompl
	ros-galactic/moveit_ros_move_group
	ros-galactic/moveit_ros_visualization
	ros-galactic/moveit_servo
	ros-galactic/moveit_simple_controller_manager
	ros-galactic/rviz2
	ros-galactic/ur_description
	ros-galactic/urdf
	ros-galactic/warehouse_ros_mongo
	ros-galactic/xacro
"
DEPEND="${RDEPEND}
	ros-galactic/ament_cmake
	ros-galactic/ament_cmake_python
"

SLOT="0"
ROS_DISTRO="galactic"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
