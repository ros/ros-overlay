# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{3_5,3_6} )

inherit ament-cmake

DESCRIPTION="The new driver for Universal Robots UR3, UR5 and UR10 robots with CB3 contr[...]"
HOMEPAGE="https://github.com/UniversalRobots/Universal_Robots_ROS2_Driver/issues"
SRC_URI="https://github.com/ros2-gbp/Universal_Robots_ROS2_Driver-release/archive/release/galactic/${PN}/2.1.2-1.tar.gz -> ${PN}-galactic-release-${PV}.tar.gz"

LICENSE="BSD-3-Clause"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
IUSE="test"
RDEPEND="
	ros-galactic/controller_manager
	ros-galactic/controller_manager_msgs
	ros-galactic/geometry_msgs
	ros-galactic/hardware_interface
	ros-galactic/pluginlib
	ros-galactic/rclcpp
	ros-galactic/rclcpp_lifecycle
	ros-galactic/rclpy
	ros-galactic/std_msgs
	ros-galactic/std_srvs
	ros-galactic/tf2_geometry_msgs
	ros-galactic/ur_bringup
	ros-galactic/ur_client_library
	ros-galactic/ur_controllers
	ros-galactic/ur_dashboard_msgs
	ros-galactic/ur_description
	ros-galactic/ur_msgs
	test? ( ros-galactic/launch_testing_ament_cmake )
"
DEPEND="${RDEPEND}
	ros-galactic/ament_cmake
	ros-galactic/ament_cmake_python
"

SLOT="0"
ROS_DISTRO="galactic"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
