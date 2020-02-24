# Copyright 2020 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{2_7,3_5,3_6} )

inherit ros-cmake

DESCRIPTION="The Extensible Optimization Toolset \(EXOTica\) is a library for defining p[...]"
HOMEPAGE="https://github.com/ipab-slmc/exotica"
SRC_URI="https://github.com/ipab-slmc/${PN}-release/archive/release/melodic/${PN}/5.1.3-3.tar.gz -> ${PN}-melodic-release-${PV}.tar.gz"

LICENSE="BSD"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
RDEPEND="
	ros-melodic/exotica_aico_solver
	ros-melodic/exotica_collision_scene_fcl
	ros-melodic/exotica_collision_scene_fcl_latest
	ros-melodic/exotica_core
	ros-melodic/exotica_core_task_maps
	ros-melodic/exotica_ik_solver
	ros-melodic/exotica_levenberg_marquardt_solver
	ros-melodic/exotica_ompl_solver
	ros-melodic/exotica_python
	ros-melodic/exotica_time_indexed_rrt_connect_solver
"
DEPEND="${RDEPEND}
	ros-melodic/catkin
"

SLOT="0"
ROS_DISTRO="melodic"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
