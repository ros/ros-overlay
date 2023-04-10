# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=8
PYTHON_COMPAT=( python{3_8,3_9,3_10,3_11} )

inherit ament-cmake

DESCRIPTION="moveit_runtime meta package contains MoveIt packages that are essential for[...]"
HOMEPAGE="http://moveit.ros.org"
SRC_URI="https://github.com/ros2-gbp/moveit2-release/archive/release/humble/${PN}/2.5.4-1.tar.gz -> ${PN}-humble-release-${PV}.tar.gz"

LICENSE="BSD"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
IUSE="test"
RDEPEND="
	ros-humble/moveit_core
	ros-humble/moveit_planners
	ros-humble/moveit_plugins
	ros-humble/moveit_ros_move_group
	ros-humble/moveit_ros_perception
	ros-humble/moveit_ros_planning
	ros-humble/moveit_ros_planning_interface
	ros-humble/moveit_ros_warehouse
	test? ( ros-humble/ament_lint_auto )
	test? ( ros-humble/ament_lint_common )
"
DEPEND="${RDEPEND}
	ros-humble/ament_cmake
"

SLOT="0"
ROS_DISTRO="humble"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
