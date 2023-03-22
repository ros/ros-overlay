# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{3_8,3_9,3_10} )

inherit ament-cmake

DESCRIPTION="Helper functions for displaying and debugging MoveIt data in Rviz via publi[...]"
HOMEPAGE="https://github.com/ros-planning/moveit_visual_tools"
SRC_URI="https://github.com/ros2-gbp/${PN}-release/archive/release/humble/${PN}/4.1.0-1.tar.gz -> ${PN}-humble-release-${PV}.tar.gz"

LICENSE="BSD"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
IUSE="test"
RDEPEND="
	ros-humble/geometry_msgs
	ros-humble/graph_msgs
	ros-humble/moveit_common
	ros-humble/moveit_core
	ros-humble/moveit_ros_planning
	ros-humble/rclcpp
	ros-humble/rviz_visual_tools
	ros-humble/std_msgs
	ros-humble/tf2_eigen
	ros-humble/tf2_ros
	ros-humble/trajectory_msgs
	ros-humble/visualization_msgs
	test? ( ros-humble/ament_lint_auto )
	test? ( ros-humble/ament_lint_common )
"
DEPEND="${RDEPEND}
	ros-humble/ament_cmake
"

SLOT="0"
ROS_DISTRO="humble"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
