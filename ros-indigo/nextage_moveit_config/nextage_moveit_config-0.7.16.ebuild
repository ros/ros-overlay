# Copyright 2017 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{2_7,3_5} )

inherit ros-cmake

DESCRIPTION="'An automatically generated package with all the configuration and launch files f'"
HOMEPAGE="https://wiki.ros.org"
SRC_URI="https://github.com/tork-a/rtmros_nextage-release/archive/release/indigo/nextage_moveit_config/0.7.16-0.tar.gz -> ${PN}-release-${PV}.tar.gz"

LICENSE="BSD"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
RDEPEND="
	ros-indigo/hironx_moveit_config
	ros-indigo/moveit_planners
	ros-indigo/moveit_ros
	ros-indigo/moveit_ros_move_group
	ros-indigo/moveit_ros_planning_interface
	ros-indigo/moveit_ros_visualization
	ros-indigo/nextage_ros_bridge
	ros-indigo/pr2_moveit_plugins
	ros-indigo/trac_ik_kinematics_plugin
"
DEPEND="${RDEPEND}
	ros-indigo/catkin
"

SLOT="0"
ROS_DISTRO="indigo"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"

