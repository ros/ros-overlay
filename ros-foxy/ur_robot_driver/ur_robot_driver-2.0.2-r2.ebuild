# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{3_8,3_9,3_10} )

inherit ament-cmake

DESCRIPTION="The new driver for Universal Robots UR3, UR5 and UR10 robots with CB3 contr[...]"
HOMEPAGE="https://github.com/UniversalRobots/Universal_Robots_ROS2_Driver/issues"
SRC_URI="https://github.com/ros2-gbp/Universal_Robots_ROS2_Driver-release/archive/release/foxy/${PN}/2.0.2-2.tar.gz -> ${PN}-foxy-release-${PV}.tar.gz"

LICENSE="Apache-2.0"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
IUSE="test"
RDEPEND="
	ros-foxy/controller_manager
	ros-foxy/controller_manager_msgs
	ros-foxy/geometry_msgs
	ros-foxy/hardware_interface
	ros-foxy/pluginlib
	ros-foxy/rclcpp
	ros-foxy/rclcpp_lifecycle
	ros-foxy/std_msgs
	ros-foxy/std_srvs
	ros-foxy/ur_bringup
	ros-foxy/ur_client_library
	ros-foxy/ur_controllers
	ros-foxy/ur_dashboard_msgs
	ros-foxy/ur_description
	ros-foxy/ur_msgs
	test? ( ros-foxy/launch_testing_ament_cmake )
	test? ( ros-foxy/rclpy )
	test? ( ros-foxy/ur_bringup )
"
DEPEND="${RDEPEND}
	ros-foxy/ament_cmake
"

SLOT="0"
ROS_DISTRO="foxy"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
