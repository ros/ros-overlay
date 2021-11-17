# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=7
PYTHON_COMPAT=( python{3_8,3_9,3_10} )

inherit ros-cmake

DESCRIPTION="Metapackage for all dynamics solvers bundled with core EXOTica."
HOMEPAGE="https://wiki.ros.org"
SRC_URI="https://github.com/ipab-slmc/exotica-release/archive/release/noetic/${PN}/6.2.0-1.tar.gz -> ${PN}-noetic-release-${PV}.tar.gz"

LICENSE="BSD"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
RDEPEND="
	ros-noetic/exotica_cartpole_dynamics_solver
	ros-noetic/exotica_double_integrator_dynamics_solver
	ros-noetic/exotica_pendulum_dynamics_solver
	ros-noetic/exotica_pinocchio_dynamics_solver
	ros-noetic/exotica_quadrotor_dynamics_solver
"
DEPEND="${RDEPEND}
	ros-noetic/catkin
"

SLOT="0"
ROS_DISTRO="noetic"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
