# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{2_7,3_5,3_6} )

inherit ros-cmake

DESCRIPTION="Efficient Task Space Inverse Dynamics \(TSID\) based on Pinocchio"
HOMEPAGE="https://github.com/stack-of-tasks/tsid"
SRC_URI="https://github.com/stack-of-tasks/${PN}-ros-release/archive/release/melodic/${PN}/1.6.2-1.tar.gz -> ${PN}-melodic-release-${PV}.tar.gz"

LICENSE="BSD"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
RDEPEND="
	ros-melodic/catkin
	ros-melodic/eigenpy
	ros-melodic/eiquadprog
	ros-melodic/pinocchio
	dev-libs/boost[python]
	media-gfx/graphviz
"
DEPEND="${RDEPEND}
	dev-util/cmake
	app-doc/doxygen
	dev-vcs/git
"

SLOT="0"
ROS_DISTRO="melodic"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
