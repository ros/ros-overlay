# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=7
PYTHON_COMPAT=( python{3_8,3_9,3_10} )

inherit ros-cmake

DESCRIPTION="A simulation interface for a hardware interface for ros_control, and loads [...]"
HOMEPAGE="https://github.com/davetcoleman/moveit_sim_controller"
SRC_URI="https://github.com/PickNikRobotics/${PN}-release/archive/release/noetic/${PN}/0.3.0-1.tar.gz -> ${PN}-noetic-release-${PV}.tar.gz"

LICENSE="BSD"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
RDEPEND="
	ros-noetic/moveit_core
	ros-noetic/moveit_ros_planning
	ros-noetic/ros_control_boilerplate
	ros-noetic/roscpp
	ros-noetic/rosparam_shortcuts
"
DEPEND="${RDEPEND}
	ros-noetic/catkin
	ros-noetic/roslint
"

SLOT="0"
ROS_DISTRO="noetic"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
