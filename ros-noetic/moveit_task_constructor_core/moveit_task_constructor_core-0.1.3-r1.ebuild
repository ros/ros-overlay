# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{2_7,3_5,3_6} )

inherit ros-cmake

DESCRIPTION="MoveIt Task Pipeline"
HOMEPAGE="https://github.com/ros-planning/moveit_task_constructor"
SRC_URI="https://github.com/ros-gbp/moveit_task_constructor-release/archive/release/noetic/${PN}/0.1.3-1.tar.gz -> ${PN}-noetic-release-${PV}.tar.gz"

LICENSE="BSD"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
IUSE="test"
RDEPEND="
	ros-noetic/geometry_msgs
	ros-noetic/moveit_core
	ros-noetic/moveit_ros_planning
	ros-noetic/moveit_ros_planning_interface
	ros-noetic/moveit_task_constructor_msgs
	ros-noetic/roscpp
	ros-noetic/rviz_marker_tools
	ros-noetic/tf2_eigen
	ros-noetic/visualization_msgs
	test? ( ros-noetic/moveit_commander )
	test? ( ros-noetic/moveit_planners )
	test? ( ros-noetic/moveit_resources_fanuc_moveit_config )
	test? ( ros-noetic/rostest )
	test? ( ros-noetic/rosunit )
"
DEPEND="${RDEPEND}
	ros-noetic/catkin
	ros-noetic/roslint
	dev-python/setuptools
"

SLOT="0"
ROS_DISTRO="noetic"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
