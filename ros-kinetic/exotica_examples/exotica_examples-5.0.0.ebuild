# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{2_7,3_5,3_6} )

inherit ros-cmake

DESCRIPTION="Package containing examples and system tests for EXOTica."
HOMEPAGE="https://github.com/ipab-slmc/exotica"
SRC_URI="https://github.com/ipab-slmc/exotica-release/archive/release/kinetic/${PN}/5.0.0-0.tar.gz -> ${PN}-kinetic-release-${PV}.tar.gz"

LICENSE="BSD"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
IUSE="test"
RDEPEND="
	ros-kinetic/exotica_aico_solver
	ros-kinetic/exotica_collision_scene_fcl
	ros-kinetic/exotica_core
	ros-kinetic/exotica_core_task_maps
	ros-kinetic/exotica_ik_solver
	ros-kinetic/exotica_ompl_solver
	ros-kinetic/exotica_python
	ros-kinetic/exotica_time_indexed_rrt_connect_solver
	ros-kinetic/geometry_msgs
	ros-kinetic/interactive_markers
	ros-kinetic/python_orocos_kdl
	ros-kinetic/robot_state_publisher
	ros-kinetic/rviz
	ros-kinetic/sensor_msgs
	ros-kinetic/visualization_msgs
	test? ( ros-kinetic/exotica_val_description )
	test? ( ros-kinetic/rostest )
"
DEPEND="${RDEPEND}
	ros-kinetic/catkin
"

SLOT="0"
ROS_DISTRO="kinetic"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
