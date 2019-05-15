# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{2_7,3_5,3_6} )

inherit ros-cmake

DESCRIPTION="An automatically generated package with all the configuration and launch fi[...]"
HOMEPAGE="http://ros.org/wiki/nextage_moveit_config"
SRC_URI="https://github.com/tork-a/rtmros_nextage-release/archive/release/kinetic/${PN}/0.8.5-1.tar.gz -> ${PN}-kinetic-release-${PV}.tar.gz"

LICENSE="BSD"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
IUSE="test"
RDEPEND="
	ros-kinetic/hironx_moveit_config
	ros-kinetic/moveit_planners
	ros-kinetic/moveit_ros
	ros-kinetic/moveit_ros_move_group
	ros-kinetic/moveit_ros_planning_interface
	ros-kinetic/moveit_ros_visualization
	ros-kinetic/moveit_simple_controller_manager
	ros-kinetic/nextage_ros_bridge
	ros-kinetic/trac_ik_kinematics_plugin
	test? ( ros-kinetic/joint_state_publisher )
	test? ( ros-kinetic/robot_state_publisher )
	test? ( ros-kinetic/rostest )
"
DEPEND="${RDEPEND}
	ros-kinetic/catkin
"

SLOT="0"
ROS_DISTRO="kinetic"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
