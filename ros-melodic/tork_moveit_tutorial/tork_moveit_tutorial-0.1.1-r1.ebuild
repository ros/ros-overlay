# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{2_7,3_5,3_6} )

inherit ros-cmake

DESCRIPTION="The tork_moveit_tutorial package"
HOMEPAGE="https://wiki.ros.org"
SRC_URI="https://github.com/tork-a/${PN}-release/archive/release/melodic/${PN}/0.1.1-1.tar.gz -> ${PN}-melodic-release-${PV}.tar.gz"

LICENSE="BSD"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
RDEPEND="
	ros-melodic/gazebo_ros
	ros-melodic/moveit_commander
	ros-melodic/moveit_ros_move_group
	ros-melodic/moveit_ros_planning
	ros-melodic/moveit_ros_planning_interface
	ros-melodic/moveit_ros_visualization
	ros-melodic/moveit_simple_controller_manager
"
DEPEND="${RDEPEND}
	ros-melodic/catkin
"

SLOT="0"
ROS_DISTRO="melodic"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
