# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=7
PYTHON_COMPAT=( python{3_8,3_9,3_10} )

inherit ros-cmake

DESCRIPTION="Path planning and navigation algorithms for robots/vehicles moving on plana[...]"
HOMEPAGE="https://github.com/MRPT/mrpt_path_planning"
SRC_URI="https://github.com/mrpt-ros-pkg-release/${PN}-release/archive/release/noetic/${PN}/0.1.2-1.tar.gz -> ${PN}-noetic-release-${PV}.tar.gz"

LICENSE="BSD"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
RDEPEND="
	ros-noetic/mrpt2
	ros-noetic/mvsim
"
DEPEND="${RDEPEND}
	dev-util/cmake
"

SLOT="0"
ROS_DISTRO="noetic"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
