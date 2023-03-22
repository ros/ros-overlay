# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{2_7,3_5,3_6} )

inherit ros-cmake

DESCRIPTION="demo tasks illustrating various capabilities of MTC."
HOMEPAGE="https://wiki.ros.org"
SRC_URI="https://github.com/ros-gbp/moveit_task_constructor-release/archive/release/noetic/${PN}/0.1.3-1.tar.gz -> ${PN}-noetic-release-${PV}.tar.gz"

LICENSE="BSD"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
IUSE="test"
RDEPEND="
	ros-noetic/moveit_core
	ros-noetic/moveit_resources_panda_moveit_config
	ros-noetic/moveit_ros_planning_interface
	ros-noetic/moveit_task_constructor_capabilities
	ros-noetic/moveit_task_constructor_core
	ros-noetic/roscpp
	ros-noetic/rosparam_shortcuts
	test? ( ros-noetic/moveit_fake_controller_manager )
	test? ( ros-noetic/rostest )
"
DEPEND="${RDEPEND}
	ros-noetic/catkin
"

SLOT="0"
ROS_DISTRO="noetic"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
