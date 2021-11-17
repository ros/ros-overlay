# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=7
PYTHON_COMPAT=( python{3_8,3_9,3_10} )

inherit ros-cmake

DESCRIPTION="Package containing examples and system tests for EXOTica."
HOMEPAGE="https://github.com/ipab-slmc/exotica"
SRC_URI="https://github.com/ipab-slmc/exotica-release/archive/release/noetic/${PN}/6.2.0-1.tar.gz -> ${PN}-noetic-release-${PV}.tar.gz"

LICENSE="BSD"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
IUSE="test"
RDEPEND="
	ros-noetic/exotica_aico_solver
	ros-noetic/exotica_cartpole_dynamics_solver
	ros-noetic/exotica_collision_scene_fcl_latest
	ros-noetic/exotica_core
	ros-noetic/exotica_core_task_maps
	ros-noetic/exotica_ddp_solver
	ros-noetic/exotica_double_integrator_dynamics_solver
	ros-noetic/exotica_ik_solver
	ros-noetic/exotica_ilqg_solver
	ros-noetic/exotica_ilqr_solver
	ros-noetic/exotica_levenberg_marquardt_solver
	ros-noetic/exotica_ompl_control_solver
	ros-noetic/exotica_ompl_solver
	ros-noetic/exotica_pendulum_dynamics_solver
	ros-noetic/exotica_pinocchio_dynamics_solver
	ros-noetic/exotica_python
	ros-noetic/exotica_quadrotor_dynamics_solver
	ros-noetic/exotica_scipy_solver
	ros-noetic/exotica_time_indexed_rrt_connect_solver
	ros-noetic/geometry_msgs
	ros-noetic/interactive_markers
	ros-noetic/robot_state_publisher
	ros-noetic/rviz
	ros-noetic/sensor_msgs
	ros-noetic/visualization_msgs
	test? ( ros-noetic/exotica_val_description )
	test? ( ros-noetic/rostest )
	test? ( ros-noetic/rosunit )
	dev-python/python_orocos_kdl
"
DEPEND="${RDEPEND}
	ros-noetic/catkin
"

SLOT="0"
ROS_DISTRO="noetic"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
