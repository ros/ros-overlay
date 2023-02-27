# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{3_5,3_6} )

inherit ament-cmake

DESCRIPTION="Provides controllers that use the speed scaling interface of Universal Robots."
HOMEPAGE="https://github.com/UniversalRobots/Universal_Robots_ROS2_Driver/issues"
SRC_URI="https://github.com/ros2-gbp/Universal_Robots_ROS2_Driver-release/archive/release/galactic/${PN}/2.1.2-1.tar.gz -> ${PN}-galactic-release-${PV}.tar.gz"

LICENSE="BSD-3-Clause"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
RDEPEND="
	ros-galactic/angles
	ros-galactic/controller_interface
	ros-galactic/joint_trajectory_controller
	ros-galactic/lifecycle_msgs
	ros-galactic/pluginlib
	ros-galactic/rclcpp_lifecycle
	ros-galactic/rcutils
	ros-galactic/realtime_tools
	ros-galactic/std_msgs
	ros-galactic/std_srvs
	ros-galactic/ur_dashboard_msgs
	ros-galactic/ur_msgs
"
DEPEND="${RDEPEND}
	ros-galactic/ament_cmake
"

SLOT="0"
ROS_DISTRO="galactic"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
