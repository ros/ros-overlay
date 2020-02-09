# Copyright 2020 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{2_7,3_5,3_6} )

inherit ros-cmake

DESCRIPTION="Metapackage for all dynamics solvers bundled with core EXOTica."
HOMEPAGE="https://wiki.ros.org"
SRC_URI="https://github.com/ipab-slmc/exotica-release/archive/release/melodic/${PN}/5.1.0-1.tar.gz -> ${PN}-melodic-release-${PV}.tar.gz"

LICENSE="BSD"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
RDEPEND="
	ros-melodic/exotica_cartpole_dynamics_solver
	ros-melodic/exotica_double_integrator_dynamics_solver
	ros-melodic/exotica_pendulum_dynamics_solver
	ros-melodic/exotica_pinocchio_dynamics_solver
	ros-melodic/exotica_quadrotor_dynamics_solver
"
DEPEND="${RDEPEND}
	ros-melodic/catkin
"

SLOT="0"
ROS_DISTRO="melodic"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
