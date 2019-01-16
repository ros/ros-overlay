# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{2_7,3_5,3_6} )

inherit ros-cmake

DESCRIPTION="The Extensible Optimization Toolset \(EXOTica\) is a library for defining p[...]"
HOMEPAGE="https://github.com/ipab-slmc/exotica"
SRC_URI="https://github.com/ipab-slmc/${PN}-release/archive/release/kinetic/${PN}/5.0.0-0.tar.gz -> ${PN}-kinetic-release-${PV}.tar.gz"

LICENSE="BSD"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
RDEPEND="
	ros-kinetic/exotica_aico_solver
	ros-kinetic/exotica_collision_scene_fcl
	ros-kinetic/exotica_collision_scene_fcl_latest
	ros-kinetic/exotica_core
	ros-kinetic/exotica_core_task_maps
	ros-kinetic/exotica_ik_solver
	ros-kinetic/exotica_levenberg_marquardt_solver
	ros-kinetic/exotica_ompl_solver
	ros-kinetic/exotica_python
	ros-kinetic/exotica_time_indexed_rrt_connect_solver
"
DEPEND="${RDEPEND}
	ros-kinetic/catkin
"

SLOT="0"
ROS_DISTRO="kinetic"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
