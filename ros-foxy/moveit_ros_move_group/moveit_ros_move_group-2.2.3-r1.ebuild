# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{3_8,3_9,3_10} )

inherit ament-cmake

DESCRIPTION="The move_group node for MoveIt"
HOMEPAGE="http://moveit.ros.org"
SRC_URI="https://github.com/moveit/moveit2-release/archive/release/foxy/${PN}/2.2.3-1.tar.gz -> ${PN}-foxy-release-${PV}.tar.gz"

LICENSE="BSD"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
IUSE="test"
RDEPEND="
	ros-foxy/moveit_core
	ros-foxy/moveit_kinematics
	ros-foxy/moveit_ros_occupancy_map_monitor
	ros-foxy/moveit_ros_planning
	ros-foxy/pluginlib
	ros-foxy/rclcpp
	ros-foxy/rclcpp_action
	ros-foxy/std_srvs
	ros-foxy/tf2
	ros-foxy/tf2_geometry_msgs
	ros-foxy/tf2_ros
	test? ( ros-foxy/ament_lint_auto )
	test? ( ros-foxy/ament_lint_common )
	test? ( ros-foxy/moveit_resources_fanuc_moveit_config )
"
DEPEND="${RDEPEND}
	ros-foxy/ament_cmake
	ros-foxy/moveit_common
"

SLOT="0"
ROS_DISTRO="foxy"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
