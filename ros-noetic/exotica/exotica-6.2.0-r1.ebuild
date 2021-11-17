# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=7
PYTHON_COMPAT=( python{3_8,3_9,3_10} )

inherit ros-cmake

DESCRIPTION="The Extensible Optimization Toolset \(EXOTica\) is a library for defining p[...]"
HOMEPAGE="https://github.com/ipab-slmc/exotica"
SRC_URI="https://github.com/ipab-slmc/${PN}-release/archive/release/noetic/${PN}/6.2.0-1.tar.gz -> ${PN}-noetic-release-${PV}.tar.gz"

LICENSE="BSD"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
RDEPEND="
	ros-noetic/exotica_aico_solver
	ros-noetic/exotica_collision_scene_fcl_latest
	ros-noetic/exotica_core
	ros-noetic/exotica_core_task_maps
	ros-noetic/exotica_ik_solver
	ros-noetic/exotica_levenberg_marquardt_solver
	ros-noetic/exotica_ompl_solver
	ros-noetic/exotica_python
	ros-noetic/exotica_time_indexed_rrt_connect_solver
"
DEPEND="${RDEPEND}
	ros-noetic/catkin
"

SLOT="0"
ROS_DISTRO="noetic"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
