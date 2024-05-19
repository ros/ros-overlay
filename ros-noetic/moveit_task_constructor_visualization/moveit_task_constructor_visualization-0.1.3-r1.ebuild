# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=7
PYTHON_COMPAT=( python{3_8,3_9,3_10} )

inherit ros-cmake

DESCRIPTION="Visualization tools for MoveIt Task Pipeline"
HOMEPAGE="https://wiki.ros.org"
SRC_URI="https://github.com/ros-gbp/moveit_task_constructor-release/archive/release/noetic/${PN}/0.1.3-1.tar.gz -> ${PN}-noetic-release-${PV}.tar.gz"

LICENSE="BSD"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
IUSE="test"
RDEPEND="
	ros-noetic/moveit_core
	ros-noetic/moveit_ros_visualization
	ros-noetic/moveit_task_constructor_core
	ros-noetic/moveit_task_constructor_msgs
	ros-noetic/roscpp
	ros-noetic/rviz
	test? ( ros-noetic/moveit_resources_fanuc_moveit_config )
	test? ( ros-noetic/rostest )
	test? ( ros-noetic/rosunit )
"
DEPEND="${RDEPEND}
	ros-noetic/catkin
	dev-qt/qtcore:5
	dev-qt/qtwidgets:5
	dev-qt/qttest:5
"

SLOT="0"
ROS_DISTRO="noetic"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
