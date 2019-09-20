# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{2_7,3_5,3_6} )

inherit ros-cmake

DESCRIPTION="A simulation interface for a hardware interface for ros_control, and loads [...]"
HOMEPAGE="https://github.com/davetcoleman/moveit_sim_controller"
SRC_URI="https://github.com/PickNikRobotics/${PN}-release/archive/release/melodic/${PN}/0.2.0-1.tar.gz -> ${PN}-melodic-release-${PV}.tar.gz"

LICENSE="BSD"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
RDEPEND="
	ros-melodic/moveit_core
	ros-melodic/moveit_ros_planning
	ros-melodic/ros_control_boilerplate
	ros-melodic/roscpp
	ros-melodic/rosparam_shortcuts
"
DEPEND="${RDEPEND}
	ros-melodic/catkin
	ros-melodic/roslint
"

SLOT="0"
ROS_DISTRO="melodic"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
