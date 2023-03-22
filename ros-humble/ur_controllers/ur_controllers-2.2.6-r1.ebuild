# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{3_8,3_9,3_10} )

inherit ament-cmake

DESCRIPTION="Provides controllers that use the speed scaling interface of Universal Robots."
HOMEPAGE="https://github.com/UniversalRobots/Universal_Robots_ROS2_Driver/issues"
SRC_URI="https://github.com/ros2-gbp/Universal_Robots_ROS2_Driver-release/archive/release/humble/${PN}/2.2.6-1.tar.gz -> ${PN}-humble-release-${PV}.tar.gz"

LICENSE="BSD-3-Clause"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
RDEPEND="
	ros-humble/angles
	ros-humble/controller_interface
	ros-humble/joint_trajectory_controller
	ros-humble/lifecycle_msgs
	ros-humble/pluginlib
	ros-humble/rclcpp_lifecycle
	ros-humble/rcutils
	ros-humble/realtime_tools
	ros-humble/std_msgs
	ros-humble/std_srvs
	ros-humble/ur_dashboard_msgs
	ros-humble/ur_msgs
"
DEPEND="${RDEPEND}
	ros-humble/ament_cmake
"

SLOT="0"
ROS_DISTRO="humble"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
